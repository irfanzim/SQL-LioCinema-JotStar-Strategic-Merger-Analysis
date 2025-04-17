WITH FIRST_DURATION_COUNT AS (
SELECT
	*,
	case
		when (last_active_date is null or last_active_date>"2024-11-30") and (plan_change_date is null or plan_change_date>"2024-11-30")
        then
			case
				when day(subscription_date)<day("2024-11-30") then
				PERIOD_DIFF(DATE_FORMAT("2024-11-30", '%Y%m'), DATE_FORMAT(subscription_date, '%Y%m'))+1
				when day(subscription_date)=day("2024-11-30") then
				PERIOD_DIFF(DATE_FORMAT("2024-11-30", '%Y%m'), DATE_FORMAT(subscription_date, '%Y%m'))+1
				when day(subscription_date)>day("2024-11-30") then
				PERIOD_DIFF(DATE_FORMAT("2024-11-30", '%Y%m'), DATE_FORMAT(subscription_date, '%Y%m'))
			end
        when (last_active_date is not null and last_active_date<="2024-11-30")
        then 
			case
				when day(subscription_date)>day(last_active_date) then
				PERIOD_DIFF(DATE_FORMAT(last_active_date, '%Y%m'), DATE_FORMAT(subscription_date, '%Y%m'))
                when day(subscription_date)<day(last_active_date) then
				PERIOD_DIFF(DATE_FORMAT(last_active_date, '%Y%m'), DATE_FORMAT(subscription_date, '%Y%m'))+1
                when day(subscription_date)=day(last_active_date) then
				PERIOD_DIFF(DATE_FORMAT(last_active_date, '%Y%m'), DATE_FORMAT(subscription_date, '%Y%m'))
			end
        when (plan_change_date is not null and plan_change_date<="2024-11-30")
        then
			PERIOD_DIFF(DATE_FORMAT(plan_change_date, '%Y%m'), DATE_FORMAT(subscription_date, '%Y%m'))
         else 0
    end AS FIRST_DURATION
FROM JOTSTAR_DB.COMBINED_SUBSCRIBERS
),
SECOND_DURATION_COUNT AS (
SELECT
	*,
	case
        when (plan_change_date is not null and plan_change_date<="2024-11-30") then
        case
			when day(plan_change_date)<day("2024-11-30") then
            PERIOD_DIFF(DATE_FORMAT("2024-11-30", '%Y%m'), DATE_FORMAT(plan_change_date, '%Y%m'))+1
            when day(plan_change_date)>day("2024-11-30") then
            PERIOD_DIFF(DATE_FORMAT("2024-11-30", '%Y%m'), DATE_FORMAT(plan_change_date, '%Y%m'))
            when day(plan_change_date)=day("2024-11-30") then
            PERIOD_DIFF(DATE_FORMAT("2024-11-30", '%Y%m'), DATE_FORMAT(plan_change_date, '%Y%m'))+1
        end
        else 0
    end AS SECOND_DURATION
FROM FIRST_DURATION_COUNT
),
FIRST_REVENUE_COUNT AS (
SELECT
	sdc.*,
	sdc.first_duration*pp.price as first_revenue
FROM second_DURATION_COUNT sdc
left join 
	plan_prices pp
    on pp.platform=sdc.platform and pp.plan=sdc.subscription_plan
),
SECOND_REVENUE_COUNT AS (
SELECT
	FRC.*,
	CASE
		when FRC.second_duration=0 then 0 else (FRC.second_duration*pp.price)
    END AS SECOND_REVENUE
FROM FIRST_REVENUE_COUNT FRC
left join 
	plan_prices pp
    on pp.platform=FRC.platform and pp.plan=FRC.new_subscription_plan
),
FINAL_REVENUE_COUNT AS (
SELECT
	SRC.*,
	SRC.first_revenue+SRC.second_revenue AS Final_REVENUE
FROM
	SECOND_REVENUE_COUNT SRC
)
SELECT SUM(Final_REVENUE) as Revenue FROM FINAL_REVENUE_COUNT