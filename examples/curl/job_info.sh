#!/usr/bin/env bash
# Indeed Job Info API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./job_info.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/indeed/job/info" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=585181841cb618e0
