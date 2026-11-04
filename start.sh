#!/bin/bash
set -e
echo "Installing Python requirements..."
pip install -r requirements.txt

echo "Installing Playwright browser..."
playwright install chromium
playwright install-deps chromium || true

echo "Starting bot..."
python -u bot.py
