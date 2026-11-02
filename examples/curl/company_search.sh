#!/usr/bin/env bash
# Indeed Company Search API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./company_search.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/indeed/company/search" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=airbus
