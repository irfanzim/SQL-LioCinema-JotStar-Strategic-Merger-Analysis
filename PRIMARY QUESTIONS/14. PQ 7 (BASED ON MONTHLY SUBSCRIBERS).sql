WITH DowngradeEvents AS (
    SELECT
        DATE_FORMAT(plan_change_date, '%Y-%m') AS downgrade_month,
        platform,
        COUNT(DISTINCT user_id) AS num_downgrades
    FROM
        combined_subscribers
    WHERE
        plan_change_date IS NOT NULL
        AND UP_DOWN_STATUS = 'Downgrade'
    GROUP BY
        downgrade_month,
        platform
),
TotalSubscribersMonthly AS (
    SELECT
        DATE_FORMAT(subscription_date, '%Y-%m') AS sub_month,
        platform,
        COUNT(DISTINCT user_id) AS total_subscribers
    FROM
        combined_subscribers
    GROUP BY
        sub_month,
        platform
),
MonthlyDowngradeRates AS (
    SELECT
        de.downgrade_month,
        de.platform,
        de.num_downgrades,
        tsm.total_subscribers,
        CAST(de.num_downgrades AS DECIMAL(10, 4)) * 100.0 / tsm.total_subscribers AS downgrade_rate_percentage
    FROM
        DowngradeEvents de
    JOIN
        TotalSubscribersMonthly tsm ON de.downgrade_month = tsm.sub_month AND de.platform = tsm.platform
)
SELECT
    downgrade_month,
    SUM(CASE WHEN platform = 'LioCinema' THEN num_downgrades ELSE 0 END) AS lio_downgrades,
    SUM(CASE WHEN platform = 'LioCinema' THEN downgrade_rate_percentage ELSE 0 END) AS lio_downgrade_rate,
    SUM(CASE WHEN platform = 'Jotstar' THEN num_downgrades ELSE 0 END) AS jotstar_downgrades,
    SUM(CASE WHEN platform = 'Jotstar' THEN downgrade_rate_percentage ELSE 0 END) AS jotstar_downgrade_rate
FROM
    MonthlyDowngradeRates
GROUP BY
    downgrade_month
ORDER BY
    downgrade_month;
    