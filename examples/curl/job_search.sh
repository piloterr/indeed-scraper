#!/usr/bin/env bash
# Indeed Job Search API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./job_search.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/indeed/job/search" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode 'query=developpeur python'
