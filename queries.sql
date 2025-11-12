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

