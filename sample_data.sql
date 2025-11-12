-- Tabelle: login_attempts
CREATE TABLE login_attempts (
    id INTEGER PRIMARY KEY,
    username TEXT,
    status TEXT,
    login_time TEXT,
    login_date TEXT,
    country TEXT
);

-- Tabelle: employees
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    username TEXT,
    department TEXT,
    hire_date TEXT,
    salary INTEGER
);

-- Beispieldaten für login_attempts
INSERT INTO login_attempts (username, status, login_time, login_date, country) VALUES
('alice', 'failed', '19:30:00', '2023-10-01', 'Germany'),
('bob', 'success', '08:15:00', '2023-10-01', 'Mexico'),
('carol', 'failed', '20:45:00', '2023-10-15', 'USA'),
('dave', 'failed', '17:50:00', '2023-11-01', 'Mexico'),
('nina', 'success', '09:00:00', '2023-11-02', 'Norway'),
('hacker', 'failed', '09:12:00', '2023-11-10', 'unknown'),
('nick', 'failed', '22:00:00', '2023-11-03', 'Netherlands');

-- Beispieldaten für employees
INSERT INTO employees (username, department, hire_date, salary) VALUES
('alice', 'Marketing', '2022-03-01', 48000),
('bob', 'Finance', '2021-07-15', 52000),
('carol', 'IT', '2020-11-30', 60000),
('dave', 'Sales', '2023-01-10', 47000),
('zoe', 'Legal', '2023-05-10', 50000),
('nina', 'HR', '2023-06-01', 45000),
('nick', 'IT', '2022-09-01', 61000);
