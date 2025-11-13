-- 1. equals sign (=)
SELECT * FROM employees WHERE department = 'Marketing';

-- 2. greater than (>)
SELECT * FROM login_attempts WHERE login_time > '18:00:00';

-- 3. less than (<)
SELECT * FROM login_attempts WHERE login_time < '09:00:00';

-- 4. BETWEEN
SELECT * FROM employees WHERE hire_date BETWEEN '2021-01-01' AND '2022-12-31';

-- 5. LIKE with wildcard
SELECT * FROM login_attempts WHERE username LIKE 'n%';  -- matches zero or more characters
SELECT * FROM login_attempts WHERE username LIKE 'n__a'; -- matches exactly one character

-- 6. NOT
SELECT * FROM employees WHERE department != 'IT';

-- 7. JOIN: Link login attempts with employee data, first variant using JOIN
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts la
JOIN employees e ON la.username = e.username
WHERE la.status = 'failed';

-- 8. INNER JOIN: Link login attempts with employee data, second variant using INNER JOIN
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts la
INNER JOIN employees e ON la.username = e.username
WHERE la.status = 'failed';

-- 9. INNER JOIN: Link login attempts with employee data, third variant using INNER JOIN without alias, using full table name
SELECT login_attempts.username, login_attempts.status, login_attempts.login_date, employees.department
FROM login_attempts
INNER JOIN employees ON login_attempts.username = employees.username
WHERE login_attempts.status = 'failed';

-- 10. JOIN: Link login attempts with employee data, fourth variant using INNER JOIN with alias, using full table name
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts AS la
JOIN employees AS e ON la.username = e.username
WHERE la.status = 'failed';

-- 11. LEFT JOIN: Shows all login attempts, even if no employee exists.
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts AS la
LEFT JOIN employees AS e ON la.username = e.username;

-- 12. RIGHT JOIN: Shows all employees, even if they have no login attempts.
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts AS la
RIGHT JOIN employees AS e ON la.username = e.username;

-- 13. FULL OUTER JOIN: Shows everything from both tables.
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts AS la
FULL OUTER JOIN employees AS e ON la.username = e.username;

-- 14. COUNT: Counts how many entries have a value in the username column in the table login_attempts.
-- Filters only those rows where the username is exactly "hacker".
 SELECT COUNT(username) FROM login_attempts WHERE username LIKE 'hacker';

-- 15. AVG: Calculates the average value of all salaries in that column.
 SELECT AVG(salary) FROM employees;

-- 16. SUM: Adds up all the values in the salary column.
SELECT SUM(salary) FROM employees;

-- 17. ORDER BY: Ascending order (lowest salary first).
SELECT username, department, salary FROM employees ORDER BY salary ASC;

-- 18. ORDER BY: Descending order (highest salary first).
SELECT username, department, salary FROM employees ORDER BY salary DESC;
