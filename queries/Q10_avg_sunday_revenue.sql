-- Average Sunday revenue
SELECT 
    day_of_week,
    ROUND(AVG(total_amount), 2) AS avg_revenue
FROM (
    SELECT 
        DATE(payment_date) AS payment_day,
        TO_CHAR(payment_date, 'Day') AS day_of_week,
        SUM(amount) AS total_amount
    FROM payment
    GROUP BY payment_day, day_of_week
) AS daily_totals
WHERE day_of_week LIKE 'Sunday%'
GROUP BY day_of_week;
