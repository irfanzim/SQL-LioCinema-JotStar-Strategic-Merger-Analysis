SELECT
	platform,
    COUNT(*) AS total_paid_user
FROM
    jotstar_db.combined_subscribers
where 
	subscription_plan <> "Free"
GROUP BY PLATFORM
