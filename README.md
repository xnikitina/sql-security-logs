# SQL Filtering for Security Logs

This project demonstrates how to use SQL queries to filter and analyze login attempts for cybersecurity purposes.

## 🔍 Features
- Filter failed login attempts after business hours
- Identify login attempts on specific dates
- Detect logins
- List employees by department

## 🚀 How to Use
1. Clone the repository:
   `git clone https://github.com/yourname/sql-security-logs.git`
2. Run setup:
   ./setup.sh
3. Execute queries:
   `bash run_queries.sh`

## 📁 Files
- `security_logs.db`: SQLite database
- `sample_data.sql`: Creates and populates the database
- `setup.sh`: Bash script that executes the SQLite command
- `queries.sql`: Contains all SQL filters
- `run_queries.sh`: Bash script to run queries
- `report.md`: Project summary and findings
- `sqlite3.exe`: SQLite command-line interface, used to create database, execute SQL scripts, run queries 
