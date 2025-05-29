#!/bin/bash

echo "📦 Setting up Dame Sermonde environment..."

# Create and activate virtual environment
python3 -m venv .venv
source .venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install requirements
pip install -r requirements.txt

echo "✅ All packages installed. Activate the environment with:"
echo "source .venv/bin/activate"
