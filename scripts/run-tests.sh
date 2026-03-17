#!/usr/bin/env bash

# Enhanced CI/CD validation script
# This script performs multiple checks to validate project structure and content

set -euo pipefail

echo "Running basic sanity checks..."

if [[ ! -f "myapp/index.html" ]]; then
  echo "ERROR: myapp/index.html not found." >&2
  exit 1
fi

if [[ ! -f "myapp/styles.css" ]]; then
  echo "ERROR: myapp/styles.css not found." >&2
  exit 1
fi

if [[ ! -f "myapp/script.js" ]]; then
  echo "ERROR: myapp/script.js not found." >&2
  exit 1
fi

if ! grep -q "March 17, 2026" myapp/index.html; then
  echo "ERROR: Today's date (March 17, 2026) not found in index.html." >&2
  exit 1
else
  echo "Test Passed: Date (March 17, 2026) is present."
fi

if ! grep -q "Feature Branch Update by Miswa Patel" myapp/index.html; then
  echo "ERROR: Feature Branch Update text not found in index.html." >&2
  exit 1
else
  echo "Test Passed: Feature Branch Update text is present."
fi

if ! grep -q "Automation Status" myapp/index.html; then
  echo "ERROR: Automation Status text not found in index.html." >&2
  exit 1
else
  echo "Test Passed: Automation Status section is present."
fi

if ! grep -q "Miswa Patel" myapp/index.html; then
  echo "ERROR: Missing Creator Name: Miswa Patel" >&2
  exit 1
else
  echo "Creator Name Miswa Patel is present."
fi


if ! grep -q 'id="input-group-number"' myapp/index.html; then
  echo "ERROR: Group Number input field missing." >&2
  exit 1
else
  echo "Test Passed: Group Number input field is present."
fi


echo "All Tests Passed Successfully."
