SELECT city,
       SUM(amount)
FROM customer AS cust
LEFT JOIN address
    ON cust.address_id = address.address_id
LEFT JOIN city
    ON address.city_id = city.city_id
LEFT JOIN payment
    ON cust.customer_id = payment.customer_id
GROUP BY city
ORDER BY sum DESC
