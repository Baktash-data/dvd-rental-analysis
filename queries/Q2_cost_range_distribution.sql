-- Film distribution by cost range
SELECT 
    cost_range,
    COUNT(*) AS film_count
FROM (
    SELECT 
        film_id,
        replacement_cost,
        CASE 
            WHEN replacement_cost BETWEEN 9.99 AND 19.99 THEN 'low'
            WHEN replacement_cost BETWEEN 20 AND 24.99 THEN 'medium'
            WHEN replacement_cost BETWEEN 25 AND 29.99 THEN 'high'
        END AS cost_range
    FROM film
) AS cost_categories
GROUP BY cost_range;
