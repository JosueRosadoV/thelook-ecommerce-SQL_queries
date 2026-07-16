-- Exploring date ranges and totals in the different tables
SELECT MIN(created_at) AS first_join_date, MAX(created_at) AS last_join_date, COUNT(*) AS total_users
FROM `bigquery-public-data.thelook_ecommerce.users`;

SELECT MIN(created_at) AS first_order_date, MAX(created_at) AS last_order_date, COUNT(*) AS total_orders,
DATE_DIFF(MAX(created_at), MIN(created_at), DAY) AS days_date_range
FROM `bigquery-public-data.thelook_ecommerce.orders`;

-- Ensuring no orders come from inexistent users.
WITH non_existent_users AS (SELECT * 
FROM `bigquery-public-data.thelook_ecommerce.orders` AS orders JOIN `bigquery-public-data.thelook_ecommerce.users` AS users
ON orders.user_id = users.id
WHERE orders.user_id IS NULL OR users.id IS NULL)

SELECT count(*) FROM non_existent_users;
