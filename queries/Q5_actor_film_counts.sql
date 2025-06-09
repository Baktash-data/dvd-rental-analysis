SELECT act.actor_id,
       first_name,
       last_name,
       COUNT(film_id)
FROM actor AS act
LEFT JOIN film_actor AS fa
    ON act.actor_id = fa.actor_id
GROUP BY act.actor_id, first_name, last_name
ORDER BY count DESC
