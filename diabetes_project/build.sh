#!/usr/bin/env bash

# Exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Collect static files (no user input, suppress warnings)
python manage.py collectstatic --noinput

python manage.py migrate

# (Optional) Run migrations
# python manage.py migrate
