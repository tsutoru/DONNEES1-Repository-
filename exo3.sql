SELECT 
    leave.id, 
    leave.start_date,
    leave.end_date,
    employee.id AS employee_id,
    employee.first_name,
    employee.last_name,
    team.name AS team_name
FROM Employee 
INNER JOIN take  ON employee.id = take.employee_id
INNER JOIN Leave  ON take.leave_id = leave.id
INNER JOIN belong  ON employee.id = belong.employee_id
INNER JOIN Team  ON belong.team_id = team.id;
