#!/bin/bash
# Example test: run after starting server.py

curl -X POST http://localhost:8080/generate \
  -H "Content-Type: application/json" \
  -d '{
    "company_name":"ExampleCo",
    "target_raise":"$1,500,000",
    "tone":"investor-friendly",
    "assumptions":{"revenue":500000,"growth":0.25}
  }'
