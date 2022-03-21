-- CHALLENGE
-- DELIVERABLE ONE, #1-7
-- Create retirement_titles table
SELECT emp.emp_no,
       emp.first_name,
       emp.last_name,
       ti.title,
       ti.from_date,
       ti.to_date
INTO retirement_titles
FROM employees as emp
LEFT JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no
-- AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
-- AND (de.to_date = '9999-01-01');
-- WHERE de.to_date = ('9999-01-01');

-- #8-15
-- Use Dictinct with Orderby to remove duplicate rows  to create unique_titles table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
       rt.first_name,
       rt.last_name,
       rt.title
--        rt.from_date,
--       rt.to_date
INTO unique_titles
FROM retirement_titles AS rt
WHERE to_date = '9999-01-01'
ORDER BY emp_no, from_date DESC;

--#16-22
-- Titles count by retirement expectancy
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY (ut.title)
ORDER BY COUNT DESC;

--DELIVERABLE two #1-11
SELECT DISTINCT ON(emp.emp_no)emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	dept.from_date,
	dept.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS emp
	INNER JOIN dept_emp AS dept
	ON (emp.emp_no = dept.emp_no)
	INNER JOIN titles AS ti
	ON (emp.emp_no = ti.emp_no)
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (dept.to_date = '9999-01-01')
ORDER BY emp_no;
