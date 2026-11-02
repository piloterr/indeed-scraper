// Indeed Job Salary API – Node.js example (Node 18+, native fetch, ES module)
// Usage: PILOTERR_API_KEY=your-key node job_salary.mjs

const params = new URLSearchParams({
  "query": "ing\u00e9nieur-etudes-et-d\u00e9veloppement",
});

const response = await fetch(`https://api.piloterr.com/v2/indeed/job/salary?${params}`, {
  headers: { "x-api-key": process.env.PILOTERR_API_KEY },
  signal: AbortSignal.timeout(120_000),
});

if (!response.ok) {
  console.error(`Piloterr error ${response.status}: ${await response.text()}`);
  process.exit(1);
}

console.log(JSON.stringify(await response.json(), null, 2));
