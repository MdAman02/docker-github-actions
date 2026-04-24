# My Web App
This file is published by a node server hosted in the EC2. From the follwing docker image:

https://hub.docker.com/repository/docker/mdamanu/aman/tags/latest/sha256:25de2793249cacd806c26f4d216eccfb245fd4c0bba9c048cdb690369c0de65a

## Repository detail

| File | Description |
|------|-------------|
| `server.js` | Node.js HTTP server that reads and serves README.md |
| `Dockerfile` | Builds the Docker image for the Node server |
| `docker-compose.yml` | Defines and runs the container stack |
| `startup.service` | Systemd service to auto-start the server on boot |
| `scripts/containers.sh` | Cleans up existing containers and redeploys via compose |
| `scripts/startup.sh` | Entry point script run at container/service startup |
| `.github/workflows/docker-image.yml` | GitHub Actions CI to build and push the Docker image |
