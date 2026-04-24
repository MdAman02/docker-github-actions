# My Web App
This file is published by a node server hosted in the EC2. From the follwing docker image:

https://hub.docker.com/repository/docker/mdamanu/aman/tags/latest/sha256:25de2793249cacd806c26f4d216eccfb245fd4c0bba9c048cdb690369c0de65a

## Repository detail

| File | Description |
|------|-------------|
| `server.js` | Node.js HTTP server that reads and serves README.md |
| `Dockerfile` | Builds the Docker image for the Node server |
| `docker-compose.yml` | Defines and runs the node server and a nginx server |
| `startup.service` | Systemd service to scaffold env with docker login and auto-start the server containers on boot |
| `github-runner.service` | Systemd service to run the self-hosted GitHub Actions runner on boot |
| `scripts/containers.sh` | Cleans up existing containers and redeploys the docker compose |
| `scripts/startup.sh` | scripts that run for startup systemd service |
| `.github/workflows/docker-image.yml` | GitHub Actions CI to build, push the Docker images and deploy containers |

## Every push build and deploys latest image to the private reposotory
## startup script are copied to home directory and used in systemd service
## deploy job on github workflow runs the `containers.sh`

# Deployed Servers:
- Node Server: [Node](http://63.182.108.159:3000/)
- Nginx: [Nginx](http://63.182.108.159:81/)

# EC2 Instance Detail
- Instance ID: i-0f96d5bd90d54cb7e
- Instance Name: docker-github-assignment
- Instance IP: 63.182.108.159
- Instance Type: ubuntu