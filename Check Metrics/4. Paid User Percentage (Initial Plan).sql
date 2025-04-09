with paid_user as (
	SELECT
        platform,
        COUNT(*) AS total_users,
        SUM(CASE WHEN subscription_plan <> 'Free' THEN 1 ELSE 0 END) AS total_paid_user
    FROM
        jotstar_db.combined_subscribers
    GROUP BY
        platform
)

SELECT 
	PLATFORM,
    TOTAL_PAID_USER,
    cast(TOTAL_PAID_USER*100/TOTAL_USERS as decimal (10,2)) AS PAID_USER_PERCENTAGE
FROM
	PAID_USER;