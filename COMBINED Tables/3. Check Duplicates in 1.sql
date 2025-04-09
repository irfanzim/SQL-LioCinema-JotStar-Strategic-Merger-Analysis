SELECT
    user_id,
    COUNT(*) AS duplicate_count
FROM
    jotstar_db.combined_subscribers
GROUP BY
    user_id
HAVING
    COUNT(*) > 1;