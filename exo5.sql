SELECT COUNT(DISTINCT take.employee_id) AS nonbre_employees_en_conge
FROM take
INNER JOIN Leave ON take.leave_id = Leave.id
WHERE CURRENT_DATE BETWEEN Leave.start_date AND Leave.end_date;
