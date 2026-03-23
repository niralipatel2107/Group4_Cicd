#!/usr/bin/env bash

# Simple sanity check script for the project.
# You can extend this script to run linters, unit tests, or build steps.

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
fi

if ! grep -q "Victor Ferreira" myapp/index.html; then
  echo "ERROR: Victor Ferreira not found in index.html." >&2
  exit 1
else
  echo "Victor Ferreira found in index.html."
fi

if ! grep -q "Group 4" myapp/index.html; then
  echo "ERROR: Group 4 not found in index.html." >&2
  exit 1
else
  echo "Group 4 found in index.html."
fi

echo "All required files are present and date check passed."