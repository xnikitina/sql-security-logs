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
   `sqlite3 security_logs.db < sample_data.sql`
3. Execute queries:
   `bash run_queries.sh`

## 📁 Files
- `security_logs.db`: SQLite database
- `sample_data.sql`: Creates and populates the database
- `queries.sql`: Contains all SQL filters
- `run_queries.sh`: Bash script to run queries
- `report.md`: Project summary and findings
