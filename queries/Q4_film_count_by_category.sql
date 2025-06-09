-- Film count per category
SELECT 
    c.name AS category,
    COUNT(f.film_id) AS film_count
FROM film f
LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY film_count DESC;
