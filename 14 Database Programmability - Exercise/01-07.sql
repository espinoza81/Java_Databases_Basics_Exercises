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
CREATE PROCEDURE usp_get_towns_starting_with(started_with VARCHAR (50)) 
BEGIN
    SELECT `name`
	FROM towns
    WHERE lower(`name`) LIKE lower(concat(started_with, '%'))
    ORDER BY `name`;
END

-- 04. Employees from Town 
CREATE PROCEDURE usp_get_employees_from_town(town_name VARCHAR (50)) 
BEGIN
    SELECT first_name, last_name
	FROM employees 
    JOIN addresses USING (address_id)
    JOIN towns AS t USING (town_id)
    WHERE t.`name` LIKE town_name
    ORDER BY first_name, last_name;
END

-- 05. Salary Level Function 