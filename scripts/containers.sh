#!/bin/bash
echo "Cleaning up existing containers..."
sudo docker rm -f $(sudo docker ps -aq)
sudo docker image rm mdamanu/aman:latest
sudo docker compose up -d
