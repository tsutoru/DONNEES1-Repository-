SELECT id, first_name, last_name 
FROM Employee 
WHERE id NOT IN (SELECT DISTINCT employee_id FROM take);