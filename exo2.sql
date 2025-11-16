SELECT id, first_name, last_name
FROM Employee
LEFT JOIN take ON Employee.id = take.employee_id
WHERE take.leave_id IS NULL;
