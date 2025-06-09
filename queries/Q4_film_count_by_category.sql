SELECT COUNT(title),
       name
FROM film AS f
LEFT JOIN film_category AS fc
    ON f.film_id = fc.film_id
LEFT JOIN category AS cat
    ON fc.category_id = cat.category_id
GROUP BY name
ORDER BY COUNT(title) DESC
