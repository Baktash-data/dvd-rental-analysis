-- Q1_distinct_replacement_cost.sql
SELECT DISTINCT 
    film_id, 
    replacement_cost 
FROM film
ORDER BY replacement_cost;
