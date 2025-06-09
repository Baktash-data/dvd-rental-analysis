-- Unused customer addresses
SELECT 
    a.* 
FROM address a
LEFT JOIN customer c ON a.address_id = c.address_id
WHERE c.customer_id IS NULL;
