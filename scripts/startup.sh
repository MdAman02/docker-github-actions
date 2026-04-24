#!/bin/bash
echo "Starting server..."
cd ~/actions-runner
./run.sh &
./containers.sh &
