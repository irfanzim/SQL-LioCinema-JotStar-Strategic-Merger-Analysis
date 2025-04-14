WITH PAID_USER_STATUS AS (
	SELECT 
		PLATFORM,
		CASE
			WHEN CURRENT_SUBSCRIPTION_PLAN NOT IN ("FREE", "INACTIVE") THEN "PAID" ELSE "UNPAID"
		END AS PAID_STATUS
	FROM
		jotstar_db.combined_subscribers
),
PAID_USER_COUNT AS (
SELECT
	PAID_STATUS,
    SUM(CASE WHEN PLATFORM="LIOCINEMA" THEN 1 ELSE 0 END) AS LIOCINEMA,
    SUM(CASE WHEN PLATFORM="JOTSTAR" THEN 1 ELSE 0 END) AS JOTSTAR
FROM
	PAID_USER_STATUS
GROUP BY
	PAID_STATUS
),
TOTAL_USER_COUNT AS (
	SELECT
		PLATFORM,
		COUNT(*) AS TOTAL_USER
	FROM 
		JOTSTAR_DB.COMBINED_SUBSCRIBERS
	GROUP BY
		PLATFORM
)

SELECT
	P.PAID_STATUS,
    CAST(P.LIOCINEMA*100/LIO.TOTAL_USER AS DECIMAL(10,2)) AS LIO_PCT,
    CAST(P.JOTSTAR*100/JOT.TOTAL_USER AS DECIMAL(10,2)) AS JOT_PCT
FROM
	PAID_USER_COUNT P
LEFT JOIN
	TOTAL_USER_COUNT LIO ON LIO.PLATFORM="LIOCINEMA"
LEFT JOIN
	TOTAL_USER_COUNT JOT ON JOT.PLATFORM="JOTSTAR"
