#!/bin/bash
echo "Starting in Debug mode"
uvicorn main:app --host 0.0.0.0 --port 3000 --reload



