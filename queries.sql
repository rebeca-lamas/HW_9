--1. List following details of eachemployee: employee number, last name, first name, gender, salary
SELECT Employees.emp_no, last_name, first_name, gender, salary
FROM Employees
INNER JOIN Salaries
ON Employees.emp_no = Salaries.emp_no; 

--2. List employees hired in 1986
SELECT emp_no, hire_date FROM Employees
WHERE hire_date 
LIKE '1986%';

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT Department_Managers.dept_no, 
Departments.dept_name, 
Department_Managers.emp_no,
last_name,
first_name,
from_date,
to_date
FROM Department_Managers
INNER JOIN Departments
ON Department_Managers.dept_no = Departments.dept_no
INNER JOIN Employees
ON Department_Managers.emp_no = Employees.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Department_Employees.emp_no,
last_name,
first_name,
Departments.dept_name
FROM Department_Employees
INNER JOIN Departments
ON Department_Employees.dept_no = Departments.dept_no
INNER JOIN Employees
ON Department_Employees.emp_no = Employees.emp_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT
first_name,
last_name
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT Department_Employees.emp_no,
last_name,
first_name,
Departments.dept_name
FROM Department_Employees
INNER JOIN Departments
ON Department_Employees.dept_no = Departments.dept_no
INNER JOIN Employees
ON Department_Employees.emp_no = Employees.emp_no
WHERE dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, including their employee number,
--last name, first name, and department name.
SELECT Department_Employees.emp_no,
last_name,
first_name,
Departments.dept_name
FROM Department_Employees
INNER JOIN Departments
ON Department_Employees.dept_no = Departments.dept_no
INNER JOIN Employees
ON Department_Employees.emp_no = Employees.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8. descending order, list the frequency count of employee last names
SELECT last_name, COUNT(last_name) AS "name count"
FROM Employees
GROUP BY last_name
ORDER BY "name count" DESC;