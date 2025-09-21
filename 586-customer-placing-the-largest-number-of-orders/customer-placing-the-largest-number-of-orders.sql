SELECT customer_number
FROM (
    SELECT 
        customer_number,
        COUNT(order_number) AS order_count,
        RANK() OVER (ORDER BY COUNT(order_number) DESC) AS rnk
    FROM Orders
    GROUP BY customer_number
) t
WHERE rnk = 1;
