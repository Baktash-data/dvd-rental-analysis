SELECT *
FROM address AS ad
LEFT JOIN customer AS cust
    ON ad.address_id = cust.address_id
WHERE first_name IS NULL
