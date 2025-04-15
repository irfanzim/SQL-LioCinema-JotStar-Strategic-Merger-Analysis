CREATE TABLE plan_prices (
    platform VARCHAR(10),
    plan VARCHAR(10),
    price DECIMAL(10, 1)
);

INSERT INTO plan_prices (platform, plan, price)
VALUES
    ('LioCinema', 'Basic', 69.00),
    ('LioCinema', 'Premium', 129.00),
    ('Jotstar', 'VIP', 159.00),
    ('Jotstar', 'Premium', 359.00);

SELECT * FROM plan_prices;
