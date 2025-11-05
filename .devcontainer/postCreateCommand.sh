#!/bin/bash
# Install ping command
sudo apt-get update && sudo apt-get install -y iputils-ping

# Install Playwright browser drivers
npx --yes playwright install-deps

# Create a virtual environment
python -m venv .venv
# Activate the virtual environment and install the required packages in a subshell
(
    . .venv/bin/activate
    pip install -r requirements.txt
    # initialize robotframework-browser
    rfbrowser init
)
