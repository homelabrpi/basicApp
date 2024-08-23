# Makefile for setting up Python virtual environment and installing Flask

# Variable for the virtual environment directory
VENV_DIR = virtualenv

# Default target
all: venv install

# Create the virtual environment
venv:
	@echo "Creating virtual environment..."
	python3 -m venv $(VENV_DIR)

# Activate the virtual environment and install Flask
install: venv
	@echo "Activating virtual environment and installing Flask..."
	@$(VENV_DIR)/bin/pip install --upgrade pip
	@$(VENV_DIR)/bin/pip install flask

# Clean up the virtual environment
clean:
	@echo "Removing virtual environment..."
	rm -rf $(VENV_DIR)

# Help command to display available targets
help:
	@echo "Available commands:"
	@echo "  make all       - Create virtual environment and install Flask"
	@echo "  make clean     - Remove virtual environment"
	@echo "  make help      - Display this help message"