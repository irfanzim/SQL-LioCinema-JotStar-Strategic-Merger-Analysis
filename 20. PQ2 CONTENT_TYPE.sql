WITH ContentCounts AS (
    SELECT
        content_type,
        COUNT(CASE WHEN platform = 'Jotstar' THEN content_id END) AS jotstar_content,
        COUNT(CASE WHEN platform = 'LioCinema' THEN content_id END) AS liocinema_content,
        (SELECT COUNT(*) FROM Combined_Contents WHERE platform = 'Jotstar') AS total_jotstar_content,
        (SELECT COUNT(*) FROM Combined_Contents WHERE platform = 'LioCinema') AS total_liocinema_content
    FROM
        Combined_Contents
    GROUP BY
        content_type
)
SELECT
    content_type,
    jotstar_content,
    CASE
        WHEN total_jotstar_content > 0
            THEN CAST(jotstar_content AS DECIMAL(10, 2)) * 100.0 / total_jotstar_content
        ELSE 0.0
    END AS jotstar_percentage,
    liocinema_content,
    CASE
        WHEN total_liocinema_content > 0
            THEN CAST(liocinema_content AS DECIMAL(10, 2)) * 100.0 / total_liocinema_content
        ELSE 0.0
    END AS liocinema_percentage
FROM
    ContentCounts
ORDER BY
    content_type;