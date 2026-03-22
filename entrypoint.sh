#!/bin/bash
set -e

echo "Running Database Migrations..."
python statuspage/manage.py migrate --no-input

echo "Starting Gunicorn Server...."

exec "$@"
