CREATE TABLE Combined_Subscribers AS
SELECT
    user_id,
    age_group,
    city_tier,
    subscription_date,
    subscription_plan,
    last_active_date,
    plan_change_date,
    new_subscription_plan,
    'LioCinema' AS platform
FROM
    LioCinema_db.subscribers
UNION ALL
SELECT
    user_id,
    age_group,
    city_tier,
    subscription_date,
    subscription_plan,
    last_active_date,
    plan_change_date,
    new_subscription_plan,
    'Jotstar' AS platform
FROM
    Jotstar_db.subscribers;

