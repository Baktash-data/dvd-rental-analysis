SELECT title,
       length,
       name
FROM film AS f
LEFT JOIN film_category AS fc
    ON f.film_id = fc.film_id
LEFT JOIN category AS cat
    ON fc.category_id = cat.category_id
WHERE name IN('Drama','Sports')
ORDER BY length DESC
