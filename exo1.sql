SELECT id, first_name, last_name
FROM Employee 
LEFT JOIN belong  ON Employee.id = belong.employee_id
WHERE belong.team_id IS NULL;
