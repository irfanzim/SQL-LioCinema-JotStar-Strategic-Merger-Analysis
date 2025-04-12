WITH subscription_plan_STATUS AS (
	SELECT 
		subscription_plan,
		SUM(CASE WHEN ACTIVITY="ACTIVE" AND PLATFORM="LIOCINEMA" THEN 1 ELSE 0 END) AS LIO_ACTIVE_USER,
		SUM(CASE WHEN ACTIVITY="INACTIVE" AND PLATFORM="LIOCINEMA" THEN 1 ELSE 0 END) AS LIO_INACTIVE_USER,
        SUM(CASE WHEN PLATFORM="LIOCINEMA" THEN 1 ELSE 0 END) AS LIO_TOTAL_USER,
		SUM(CASE WHEN ACTIVITY="ACTIVE" AND PLATFORM="JOTSTAR" THEN 1 ELSE 0 END) AS JOT_ACTIVE_USER,
		SUM(CASE WHEN ACTIVITY="INACTIVE" AND PLATFORM="JOTSTAR" THEN 1 ELSE 0 END) AS JOT_INACTIVE_USER,
        SUM(CASE WHEN PLATFORM="JOTSTAR" THEN 1 ELSE 0 END) AS JOT_TOTAL_USER
	FROM
		JOTSTAR_DB.COMBINED_SUBSCRIBERS
	GROUP BY
		subscription_plan
)

SELECT
	subscription_plan,
    CAST(LIO_ACTIVE_USER*100/LIO_TOTAL_USER AS DECIMAL(10,2)) AS LIO_ACTIVE_PCT,
	CAST(LIO_INACTIVE_USER*100/LIO_TOTAL_USER AS DECIMAL(10,2)) AS LIO_INACTIVE_PCT,
    CAST(JOT_ACTIVE_USER*100/JOT_TOTAL_USER AS DECIMAL(10,2)) AS JOT_ACTIVE_PCT,
    CAST(JOT_INACTIVE_USER*100/JOT_TOTAL_USER AS DECIMAL(10,2)) AS JOT_INACTIVE_PCT
FROM
	subscription_plan_STATUS