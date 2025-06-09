SELECT district,
       AVG(total_amount_per_customer)
FROM
(SELECT district,
       payment.customer_id,
       SUM(amount) AS total_amount_per_customer
FROM payment
LEFT JOIN customer
    ON payment.customer_id = customer.customer_id
LEFT JOIN address
    ON customer.address_id = address.address_id
GROUP BY 1,2) AS total_amount
GROUP BY 1
ORDER BY avg DESC
