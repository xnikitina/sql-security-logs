#!/bin/bash

echo "Running queries from queries.sql on security_logs.db..."

# Prüfen, ob sqlite3 vorhanden ist
if [ ! -f "./sqlite3.exe" ]; then
  echo "sqlite3.exe nicht gefunden. Bitte sicherstellen, dass sie im Projektordner liegt."
  exit 1
fi

# Prüfen, ob queries.sql existiert
if [ ! -f "queries.sql" ]; then
  echo "queries.sql nicht gefunden."
  exit 1
fi

# Abfragen ausführen
./sqlite3.exe security_logs.db < queries.sql

echo "Abfragen erfolgreich ausgeführt."
