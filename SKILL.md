---
name: Investor Pitch & Deck Generator
description: |
  Generates investor pitches, one-page executive summaries, slide decks (PPTX), and a simple 3‑year financial outline from user inputs or uploaded financials. Designed as a Perplexity skill endpoint that accepts a POST to /generate and returns generated text plus a downloadable PPTX.
---

## Quick overview

This skill scaffold provides a minimal HTTP service (Flask) that calls an LLM to produce investor pitch content and renders a basic PowerPoint (.pptx) file. Use it as-is for testing or extend it for production with financial modeling, CSV/Excel ingestion, RBAC, and secure authentication.

## Endpoints

- POST /generate — Generate pitch content and PPTX. JSON body: company_name, target_raise, tone, assumptions (optional).
- GET /download/{filename} — Download generated PPTX files.

## How to use with Perplexity

1. Download the repository ZIP (it includes this SKILL.md at root). The repository ZIP meets Perplexity's requirement for a skill package containing SKILL.md.
2. Upload the ZIP in Perplexity's skill uploader or provide Perplexity with a public HTTPS endpoint that routes to the /generate path.
3. If Perplexity calls the endpoint directly, ensure the service is public (e.g., deployed to Render, Railway) and configure authentication (API key in X-API-Key header) as needed.

## Notes

- This scaffold uses OpenAI (openai python package). Replace the LLM call with Perplexity API calls if required by your environment.
- The manifest.json included in the repository contains a basic description of endpoints and auth to help mapping in Perplexity.
