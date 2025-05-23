WITH UP_DOWN_COUNT AS (
	SELECT 
		up_down_status, 
		sum(CASE WHEN PLATFORM="LIOCINEMA" THEN 1 ELSE 0 END ) AS "LIOCINEMA_USER",
		SUM(CASE WHEN PLATFORM="JOTSTAR" THEN 1 ELSE 0 END) AS "JOTSTAR_USER",
		COUNT(*) AS TOTAL_USER
	FROM 
		jotstar_db.combined_subscribers
	GROUP BY
		UP_DOWN_STATUS
),
PLATFORM_COUNT AS(
	SELECT
		PLATFORM,
        COUNT(*) AS TOTAL_USER
	FROM
		jotstar_db.combined_subscribers
	GROUP BY
		PLATFORM
)


SELECT
	UP_DOWN_STATUS,
    LIOCINEMA_USER,
    CAST(LIOCINEMA_USER*100/PC_LIO.TOTAL_USER AS DECIMAL(10,2)) AS LIO_PCT,
    JOTSTAR_USER,
    CAST(JOTSTAR_USER*100/PC_JOT.TOTAL_USER AS DECIMAL(10,2)) AS JOT_PCT
FROM
	UP_DOWN_COUNT UDC
LEFT JOIN
	PLATFORM_COUNT PC_LIO ON PC_LIO.PLATFORM="LIOCINEMA"
LEFT JOIN
	PLATFORM_COUNT PC_JOT ON PC_JOT.PLATFORM="JOTSTAR"
GROUP BY
	UP_DOWN_STATUS