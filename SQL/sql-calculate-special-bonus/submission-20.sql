-- Write your query below
SELECT e.employee_id, 
    CASE 
        WHEN e.name LIKE 'M%' OR e.employee_id % 2 = 0 THEN 0
        ELSE e.salary 
    END AS bonus
FROM employees e
ORDER BY e.employee_id ASC;
        