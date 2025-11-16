SELECT 
    Employee.id,
    Employee.first_name,
    Employee.last_name,
    Team.name AS team_name
FROM Employee
INNER JOIN take ON Employee.id = take.employee_id
INNER JOIN Leave ON take.leave_id = Leave.id
INNER JOIN belong ON Employee.id = belong.employee_id
INNER JOIN Team ON belong.team_id = Team.id
WHERE CURRENT_DATE BETWEEN Leave.start_date AND Leave.end_date;
