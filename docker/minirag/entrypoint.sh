#!/bin/bash
set -e

echo "Running database migrations..."
cd /app/models/db_schemes/minirag
alembic upgrade head

echo "Starting FastAPI..."
cd /app

exec uvicorn main:app \
  --host 0.0.0.0 \
  --port 8000 \
  --workers 4
