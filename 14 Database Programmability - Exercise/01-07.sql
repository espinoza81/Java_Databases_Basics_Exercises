-- 01. Employees with Salary Above 35000 
CREATE PROCEDURE usp_get_employees_salary_above_35000() 
BEGIN
	SELECT first_name, last_name
	FROM employees
    WHERE salary > 35000
    ORDER BY first_name, last_name;
END

-- 02. Employees with Salary Above Number
CREATE PROCEDURE usp_get_employees_salary_above(salary_above DECIMAL (11, 4)) 
BEGIN
	SELECT first_name, last_name
	FROM employees
    WHERE salary >= salary_above
    ORDER BY first_name, last_name;
END

-- 03. Town Names Starting With
