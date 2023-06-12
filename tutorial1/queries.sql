-- Update the value of salary to 1000 where employee name= John Smith and company_name = First Bank Corporation
UPDATE tbl_Works
SET salary = '1000'
WHERE
    employee_name = 'John Smith'
AND company_name = 'First Bank Corporation';


SELECT count(employee_name) AS manager_count 
FROM tbl_Manages
GROUP BY manager_name

--display manager who has count more than 1
SELECT manager_name, COUNT(employee_name) AS employee_count
FROM tbl_Manages
GROUP BY manager_name
HAVING COUNT(employee_name) > 1

--tutorial 1
--2.a
SELECT employee_name FROM tbl_Works
WHERE company_name = 'First Bank Corporation'

--2.b
SELECT tbl_Works.employee_name FROM tbl_Works WHERE company_name = 'Small Bank Corporation'
--using join inner
--left table JOIN right table
SELECT * FROM tbl_Employee
SELECT * FROM tbl_Works
SELECT * FROM tbl_Employee
INNER JOIN tbl_Works
ON tbl_Employee.employee_name = tbl_Works.employee_name
--WHERE company_name = 'Small Bank Corporation'

SELECT * FROM tbl_Employee
RIGHT JOIN tbl_Works
ON tbl_Employee.employee_name = tbl_Works.employee_name

SELECT * FROM tbl_Employee
LEFT JOIN tbl_Works
ON tbl_Employee.employee_name = tbl_Works.employee_name

SELECT * FROM tbl_Employee CROSS JOIN tbl_Works


--2.c
SELECT tbl_employee.employee_name, city FROM tbl_employee, tbl_Works
WHERE tbl_Works.employee_name = tbl_employee.employee_name AND salary > 10000 AND tbl_Works.company_name = 'Small Bank Corporation'

--2.d
SELECT tbl_employee.employee_name, tbl_employee.city FROM tbl_Works, tbl_employee, tbl_Company
WHERE tbl_employee.employee_name = tbl_Works.employee_name AND tbl_Works.company_name = tbl_Company.company_name AND tbl_employee.city = tbl_Company.city

--2.e
SELECT tbl_employee.employee_name, tbl_Manages.manager_name FROM  tbl_employee, tbl_Manages
WHERE tbl_employee.employee_name = tbl_Manages.employee_name AND tbl_employee.city = tbl_Manages.