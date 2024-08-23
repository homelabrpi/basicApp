#!/bin/bash

# Define the virtual environment directory
VENV_DIR="virtualenv"

# Check if the virtual environment directory exists
if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment..."
    python3 -m venv $VENV_DIR
fi

# Activate the virtual environment
source $VENV_DIR/bin/activate

# Upgrade pip and install Flask
#pip install --upgrade pip
#pip install flask

echo "Setup complete."