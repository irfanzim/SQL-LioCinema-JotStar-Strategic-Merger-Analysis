SELECT
    content_id,
    COUNT(*) AS duplicate_count
FROM
    jotstar_db.combined_contents
GROUP BY
    content_id
HAVING
    COUNT(*) > 1;