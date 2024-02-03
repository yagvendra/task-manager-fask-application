#!/bin/bash

# Initialize database
flask db init

# Apply migrations
flask db migrate

# Upgrade database
flask db upgrade

# Start Flask application
python app.py

