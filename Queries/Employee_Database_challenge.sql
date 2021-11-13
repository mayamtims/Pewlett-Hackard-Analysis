
--Retirement titles
SELECT 
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
	ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Unique titles
SELECT DISTINCT ON (rt.emp_no)
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

--Retiring titles
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;


--Mentorship eligibility
SELECT DISTINCT ON(e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employees as de
	ON e.emp_no = de.emp_no
INNER JOIN titles as t
	ON t.emp_no = e.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

--Mentorship employees per title
SELECT COUNT(title), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;