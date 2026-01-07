

SELECT CONCAT(NAME, '(', SUBSTR(Profession, 1, 1), ')') AS Output
FROM table_name;




SELECT 
	ABS(
		AVG(Salary) - 
		AVG(CAST(REPLACE(CAST(Salary AS CHAR), '0', '') AS UNSIGNED))
	) AS Error
FROM employees;



select
	SUM(Salary - CAST(REPLACE(CAST(Salary AS CHAR), '0', '') AS UNSIGNED)) / COUNT(*) AS Error
from employees;




SELECT e1.name
FROM employee e1
JOIN employee e2 on e1.employee_id = e2.manager_id
JOIN salary s1 on e1.employee_id = s1.employee_id
JOIN salary s2 on e2.manager_id = s2.employee_id
WHERE s1.salary > s2.salary;