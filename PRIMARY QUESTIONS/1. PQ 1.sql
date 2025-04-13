with currrent_user as (
	SELECT 
		date_format(subscription_date, "%y-%m") as sub_mon,
		sum(case when platform="Jotstar" then 1 else 0 end) as jot_user,
		sum(case when platform="liocinema" then 1 else 0 end) as lio_user
	FROM jotstar_db.combined_subscribers
	group by 
		sub_mon
	order by
		sub_mon
),
PREV_USER AS(
	SELECT
		SUB_MON,
        JOT_USER,
        LAG(JOT_USER,1,0) OVER (ORDER BY SUB_MON) AS JOT_PREV_USER,
        LIO_USER,
        LAG(LIO_USER,1,0) OVER (ORDER BY SUB_MON) AS LIO_PREV_USER
	FROM
		currrent_user
	ORDER BY
		SUB_MON
)

SELECT
	SUB_MON,
    JOT_USER,
    CASE
		WHEN JOT_PREV_USER>0 THEN CAST((JOT_USER-JOT_PREV_USER)*100/JOT_PREV_USER AS DECIMAL(10,2)) ELSE
        CASE
			WHEN JOT_USER>0 THEN 100 ELSE 0 END
    END AS JOT_GROWTH,
    LIO_USER,
	CASE
		WHEN LIO_PREV_USER>0 THEN CAST((LIO_USER-LIO_PREV_USER)*100/LIO_PREV_USER AS DECIMAL(10,2)) ELSE
        CASE
			WHEN LIO_USER>0 THEN 100 ELSE 0 END
    END AS LIO_GROWTH
FROM
	PREV_USER 
ORDER BY
	SUB_MON