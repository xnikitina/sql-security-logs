#!/bin/bash

echo "Creating SQLite database from sample_data.sql..."
./sqlite3.exe security_logs.db < sample_data.sql

echo "Database created: security_logs.db"
echo "You can now run queries using: sqlite3 security_logs.db < queries.sql"
