-- Food Delivery Operations Analysis starter queries
-- Expected table: deliveries(order_id, placed_at, delivered_at, promised_at, order_status)

-- Order status mix
SELECT order_status, COUNT(*) AS order_count
FROM deliveries
GROUP BY order_status
ORDER BY order_count DESC;

-- Average delivery time in minutes
SELECT COUNT(*) AS delivered_orders,
       ROUND(AVG(EXTRACT(EPOCH FROM (delivered_at - placed_at)) / 60.0), 2)
           AS average_delivery_minutes
FROM deliveries
WHERE order_status = 'Delivered'
  AND delivered_at IS NOT NULL AND placed_at IS NOT NULL;

-- On-time delivery rate
SELECT COUNT(*) AS delivered_orders,
       SUM(CASE WHEN delivered_at <= promised_at THEN 1 ELSE 0 END) AS on_time_orders,
       ROUND(100.0 * SUM(CASE WHEN delivered_at <= promised_at THEN 1 ELSE 0 END)
             / NULLIF(COUNT(*), 0), 2) AS on_time_rate_pct
FROM deliveries
WHERE order_status = 'Delivered'
  AND delivered_at IS NOT NULL AND promised_at IS NOT NULL;