-- Deliverable 1: The Number of Retiring Employees by Title
-- Create a new table that holds all the titles of employees who were born
-- between 1952 and 1955.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Remove duplicates to keep only the most recent title for each employee.
-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title

INTO unique_titles
FROM retirement_titles
-- Remove employees who have already left the company, so that the list is of
-- current employees only.
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Show how many employees are eligible for retirement by title.
SELECT COUNT(first_name), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Deliverable 2: The Employees Eligible for the Mentorship Program
-- Create a mentorship-eligibility table that holds the current employees who
-- were born in 1965.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;