-- Films longer than category average
SELECT 
    f.film_id,
    f.title,
    f.length,
    f.replacement_cost
FROM film f
WHERE f.length > (
    SELECT AVG(length)
    FROM film 
    WHERE replacement_cost = f.replacement_cost
)
ORDER BY f.length;
