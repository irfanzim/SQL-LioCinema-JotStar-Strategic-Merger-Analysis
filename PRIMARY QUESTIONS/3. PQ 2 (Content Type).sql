SELECT
	CONTENT_TYPE,
    sum(case when platform="liocinema" then 1 else 0 end) AS Lio_Contents,
    sum(case when platform="jotstar" then 1 else 0 end) AS Jot_Contents
FROM
    jotstar_db.combined_contents
GROUP BY content_type