-- Summary Question - Additional Tables
-- Create a table to show how many employees are retiring in each department.
DROP TABLE retirement_depts;

SELECT DISTINCT ON (u.emp_no) u.emp_no,
	u.first_name,
	u.last_name,
	u.title,
	de.dept_no,
	de.to_date,
	d.dept_name
INTO retirement_depts
FROM unique_titles AS u
LEFT JOIN dept_emp AS de
ON (u.emp_no = de.emp_no)
LEFT JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE (de.to_date = '9999-01-01'); 

SELECT * FROM retirement_depts;

-- Count how many employees are eligible for retirement by department.
SELECT COUNT(first_name), dept_name
-- INTO retiring_depts
FROM retirement_depts
GROUP BY dept_name
ORDER BY count DESC;

-- Create a table to show how many mentors are available in each department.
SELECT * FROM mentorship_eligibility;

SELECT DISTINCT ON (me.emp_no) me.emp_no,
	me.first_name,
	me.last_name,
	me.birth_date,
	de.dept_no,
	de.to_date,
	d.dept_name
INTO mentorship_depts
FROM mentorship_eligibility AS me
LEFT JOIN dept_emp AS de
ON (me.emp_no = de.emp_no)
LEFT JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE (de.to_date = '9999-01-01');

SELECT * FROM mentorship_depts;

-- Count how many mentors are available in each department.
SELECT COUNT(first_name), dept_name
-- INTO mentoring_depts
FROM mentorship_depts
GROUP BY dept_name
ORDER BY count DESC;

-- Create a mentorship-eligibility table that holds the current employees who
-- were born in 1964-1965.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility2
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1964-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- By department
SELECT DISTINCT ON (me2.emp_no) me2.emp_no,
	me2.first_name,
	me2.last_name,
	me2.birth_date,
	de.dept_no,
	de.to_date,
	d.dept_name
INTO mentorship_depts2
FROM mentorship_eligibility2 AS me2
LEFT JOIN dept_emp AS de
ON (me2.emp_no = de.emp_no)
LEFT JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE (de.to_date = '9999-01-01');

-- By count
SELECT COUNT(first_name), dept_name
-- INTO mentoring_depts2
FROM mentorship_depts2
GROUP BY dept_name
ORDER BY count DESC;