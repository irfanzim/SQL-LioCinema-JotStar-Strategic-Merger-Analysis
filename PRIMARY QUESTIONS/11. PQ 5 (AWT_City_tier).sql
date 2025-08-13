with city_tier_status as (
select
	city_tier,
    count(*) as total_users,
    sum(total_watch_time_mins/60) as twt_hrs,
    platform
from
	city_tier_consumption
group by
	city_tier,
    platform
),
avg_wt_hrs as (
select
	city_tier,
    total_users,
    twt_hrs,
    platform,
    cast(twt_hrs/total_users as decimal(10,2)) as avg_wt_hrs
from
	city_tier_status
)
select
	city_tier,
    sum(case when platform="liocinema" then avg_wt_hrs else 0 end) as lio_avg_wt_hrs,
	sum(case when platform="jotstar" then avg_wt_hrs else 0 end) as jot_avg_wt_hrs
from
	avg_wt_hrs
group by
	city_tier
