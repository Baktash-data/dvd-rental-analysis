SELECT country ||','||city AS country_city,
       SUM(amount) AS sum_of_amount
FROM payment
LEFT JOIN customer
    ON payment.customer_id = customer.customer_id
LEFT JOIN address
    ON customer.address_id = address.address_id
LEFT JOIN city
    ON address.city_id = city.city_id
LEFT JOIN country
    ON city.country_id = country.country_id

GROUP BY country_city
ORDER BY sum_of_amount 
