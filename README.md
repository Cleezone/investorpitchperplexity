# Investor Pitch & Deck Generator (scaffold)

What this is
- Minimal scaffold for an Investor Pitch skill that generates pitch text (via an LLM) and outputs a PPTX deck.
- Designed as a starting point. Swap the LLM call from OpenAI to Perplexity API per your environment.

Files
- server.py — Flask app with /generate endpoint
- requirements.txt — Python deps
- Dockerfile — container build
- manifest.json — simple skill manifest (generic)
- prompts.md — example prompts
- test.sh — example curl calls

Run locally
1. Copy files into a directory (investor_pitch_skill)
2. Create a .env with OPENAI_API_KEY or set env var:
   OPENAI_API_KEY=your_key_here
3. Install and run:
   pip install -r requirements.txt
   python server.py
4. Call the /generate endpoint (see prompts.md or test.sh)

To create a zip:
- zip -r investor_pitch_skill.zip investor_pitch_skill

Swap to Perplexity API
- Replace OpenAI calls in server.py with Perplexity client calls or your enterprise/Perplexity endpoint.
- Update manifest.json to match the Perplexity plugin manifest format (if you have it).

Next steps I will implement after you run this:
- Add deterministic finance modeling (p&l projection engine written in pandas) and include scenario outputs (base/optimistic/downside).
- Add PPTX templates with charts (revenue curves, burn/runway).
- Build the Finance Analysis & Forecasting skill scaffold with ingestion for CSV/Excel and connectors to QuickBooks/Xero if you want.
- Then build CRM Response Agent with HubSpot/Salesforce connectors and human-in-loop review flows.
