#!/bin/bash
echo "Booting up the server and GitHub Actions runner..."

cd ~/actions-runner
echo "Setting up GitHub Actions runner..."
./run.sh &

echo "Running containers..."
cd ~/docker-github-actions/scripts
./containers.sh &