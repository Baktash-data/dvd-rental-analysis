SELECT AVG(total_amount_per_day),
       day_name
FROM

(SELECT day_name,
       total_amount_per_day
FROM

(SELECT TO_CHAR(pay_date, 'Day') AS day_name,
       total_amount_per_day
FROM

(SELECT DATE(payment_date) AS pay_date,
       SUM(amount) AS total_amount_per_day
      
FROM payment

GROUP BY 1) AS amount_day) AS days_amounts

WHERE day_name LIKE'%Sun%') AS sunday_amounts

GROUP BY day_name
