SELECT staff_id,
       ROUND(AVG(total_per_customer),2)

FROM
(SELECT staff_id, 
       customer_id,
       SUM(amount) AS total_per_customer
FROM payment
GROUP BY 1,2
ORDER By staff_id) AS total_customer

GROUP BY staff_id
