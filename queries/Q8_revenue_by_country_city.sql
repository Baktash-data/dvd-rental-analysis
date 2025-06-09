-- Revenue by country-city
SELECT 
    co.country || ', ' || ci.city AS location,
    SUM(p.amount) AS total_revenue
FROM payment p
JOIN customer cu ON p.customer_id = cu.customer_id
JOIN address a ON cu.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY location
ORDER BY total_revenue DESC;
