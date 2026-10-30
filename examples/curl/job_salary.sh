#!/usr/bin/env bash
# Indeed Job Salary API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./job_salary.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/indeed/job/salary" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode 'query=ingénieur-etudes-et-développement'
