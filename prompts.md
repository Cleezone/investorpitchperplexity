# Example prompts / usage

1) Basic pitch generation (JSON payload):
{
  "company_name": "XHealth",
  "target_raise": "$2,000,000",
  "tone": "investor-friendly, concise",
  "assumptions": {"current_annual_revenue": 1200000, "avg_mrr_growth": 0.12, "gross_margin":0.75}
}

2) With notes:
{
  "company_name":"Acme Analytics",
  "target_raise":"$3M Series A",
  "tone":"ambitious, data-driven",
  "notes":"Focus on enterprise traction with 3 pilot customers; mention partnerships with BigBank and CloudCorp."
}

3) Local test curl (see test.sh)
