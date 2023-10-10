-- Add your sql here
SELECT c.customer_name, 
       PRINTF('$%.2f', SUM(s.price_per_month * s.subscription_length)) as total_due_formatted
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN subscriptions s ON o.subscription_id = s.subscription_id
WHERE o.order_status = 'unpaid' AND s.description = 'Fashion Magazine'
GROUP BY c.customer_name;

