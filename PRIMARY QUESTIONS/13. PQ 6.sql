WITH WATCH_STATUS AS (
	SELECT
		USER_ID,
		PLATFORM,
		SUM(TOTAL_WATCH_TIME_MINS/60) AS TWT_HRS
	FROM
		jotstar_db.combined_consumption
	GROUP BY
		USER_ID,
		PLATFORM
),
ACTIVE_STATUS AS (
	SELECT
		USER_ID,
        PLATFORM,
        ACTIVITY
	FROM
		JOTSTAR_DB.COMBINED_SUBSCRIBERS
),

COMBINED_STATUS AS (
	SELECT
		A.USER_ID,
		A.PLATFORM,
		A.ACTIVITY,
		W.TWT_HRS
	FROM
		WATCH_STATUS w
	LEFT JOIN
		ACTIVE_STATUS A ON A.USER_ID=W.USER_ID AND A.PLATFORM=W.PLATFORM
)

SELECT
	ACTIVITY,
    PLATFORM,
    AVG(TWT_HRS) AS AVG_WT_HRS
FROM
	COMBINED_STATUS
GROUP BY
	ACTIVITY,
    PLATFORM