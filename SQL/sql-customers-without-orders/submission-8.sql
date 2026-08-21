-- Write your query below
SELECT c.name
FROM customers c
WHERE NOT EXISTS  (
    SELECT *
    FROM orders o
    WHERE o.customer_id = c.id
);
