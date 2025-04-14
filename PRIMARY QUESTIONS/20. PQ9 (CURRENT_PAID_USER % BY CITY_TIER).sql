SELECT
    CITY_TIER,
    PLATFORM,
    COUNT(*) AS PREMIUM_USER,
    CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY PLATFORM) AS DECIMAL(10, 2)) AS PREMIUM_PCT
FROM
    JOTSTAR_DB.COMBINED_SUBSCRIBERS
WHERE
    CURRENT_SUBSCRIPTION_PLAN = "PREMIUM"
GROUP BY
    CITY_TIER, PLATFORM;