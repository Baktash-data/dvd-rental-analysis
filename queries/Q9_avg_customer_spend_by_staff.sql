-- Average customer spend by staff
SELECT 
    staff_id,
    ROUND(AVG(total_per_customer), 2) AS avg_customer_spend
FROM (
    SELECT 
        staff_id, 
        customer_id,
        SUM(amount) AS total_per_customer
    FROM payment
    GROUP BY staff_id, customer_id
) AS customer_totals
GROUP BY staff_id;
