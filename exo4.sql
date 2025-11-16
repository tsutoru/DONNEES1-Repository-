SELECT contract_type, COUNT(*) AS nombre_employee
FROM Employee
GROUP BY contract_type;
