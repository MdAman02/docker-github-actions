#!/bin/bash
echo "Booting up the servers..."
echo $DOCKERHUB_KEY | sudo docker login -u mdamanu --password-stdin
echo "Running containers..."
cd ~
./containers.sh