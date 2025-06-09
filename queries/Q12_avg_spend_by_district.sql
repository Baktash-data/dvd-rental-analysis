-- Average customer spend by district
SELECT 
    a.district,
    ROUND(AVG(customer_total.total_amount), 2) AS avg_spend
FROM (
    SELECT 
        customer_id,
        SUM(amount) AS total_amount
    FROM payment
    GROUP BY customer_id
) AS customer_total
JOIN customer c ON customer_total.customer_id = c.customer_id
JOIN address a ON c.address_id = a.address_id
GROUP BY a.district
ORDER BY avg_spend DESC;
