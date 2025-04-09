SELECT
	platform,
    COUNT(*) AS total_user
FROM
    jotstar_db.combined_subscribers
GROUP BY PLATFORM
