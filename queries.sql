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

-- 7. JOIN: Login-Versuche mit Mitarbeiterdaten verknüpfen
SELECT la.username, la.status, la.login_date, e.department
FROM login_attempts la
JOIN employees e ON la.username = e.username
WHERE la.status = 'failed';
