#!/bin/bash
# Mock SQL validator - in a real scenario, this would use a linter or dry-run against a local DB
echo "Validating SQL migration..."
if grep -iq "DROP TABLE" "$1"; then
  echo "Error: Destructive command detected!"
  exit 1
fi
echo "SQL looks safe (basic check passed)."
exit 0
