--RFM segmentation in the order_items table.
SELECT user_id, DATE_DIFF(DATE('2026-07-12'), DATE(MAX(created_at)), DAY) as recency, 
SUM(sale_price) as monetary,
COUNT(DISTINCT(order_id)) as frequency
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status NOT IN ('Cancelled', 'Returned')
GROUP BY user_id;
