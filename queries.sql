-- 1. Gleichheit (=)
SELECT * FROM employees WHERE department = 'Marketing';

-- 2. Größer als (>)
SELECT * FROM login_attempts WHERE login_time > '18:00:00';

-- 3. Kleiner als (<)
SELECT * FROM login_attempts WHERE login_time < '09:00:00';

-- 4. BETWEEN
SELECT * FROM employees WHERE hire_date BETWEEN '2021-01-01' AND '2022-12-31';

-- 5. LIKE mit Platzhalter
SELECT * FROM login_attempts WHERE username LIKE 'n%';  -- beginnt mit 'n'
SELECT * FROM login_attempts WHERE username LIKE 'n__a'; -- genau 4 Zeichen, beginnt mit 'n', endet mit 'a'

-- 6. NOT
SELECT * FROM employees WHERE department != 'IT';

-- 7. JOIN: Login-Versuche mit Mitarbeiterdaten verknüpfen, 1. Variante mit JOIN
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts la
JOIN employees e ON la.username = e.username
WHERE la.status = 'failed';

-- 8. INNER JOIN: Login-Versuche mit Mitarbeiterdaten verknüpfen, 2. Variante
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts la
INNER JOIN employees e ON la.username = e.username
WHERE la.status = 'failed';

-- 9. INNER JOIN: Login-Versuche mit Mitarbeiterdaten verknüpfen, 3. Variante
SELECT login_attempts.username, login_attempts.status, login_attempts.login_date, employees.department
FROM login_attempts
INNER JOIN employees ON login_attempts.username = employees.username
WHERE login_attempts.status = 'failed';



