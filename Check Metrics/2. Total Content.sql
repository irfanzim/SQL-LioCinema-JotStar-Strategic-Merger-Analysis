SELECT
	platform,
    COUNT(*) AS total_content
FROM
    jotstar_db.combined_contents
GROUP BY PLATFORM
