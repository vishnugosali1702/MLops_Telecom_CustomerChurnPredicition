#!/usr/bin/env bash
# Run the full pipeline: ingest -> preprocess -> train -> evaluate
set -euo pipefail
python main.py run-all --demo
python main.py models
