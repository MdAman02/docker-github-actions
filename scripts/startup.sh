#!/bin/bash
echo "Starting server..."
cd ~/actions-runner
echo "Setting up GitHub Actions runner..."
./run.sh &
echo "Running containers..."
./containers.sh &
