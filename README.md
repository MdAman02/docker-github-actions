# Assignment
1. Pull any image in your local machine (EC2) and create another docker-compose file where you can use this image along with another service.
2. Finally, run the docker-compose and make sure you are getting the perfect output.
3. What I will see -- HTTP link along with port with proper output,docker-compose location, and docker-compose, need .pem file to access that EC2, docker hub account link, and private repo's snapshot with build snapshot with image name.

Not Done Yet ---- 

4. Create a demo repo and create a workflow named docker-image.yml. (You can search or follow any process available on Google) 
5. Add the EC2 in that repo as the runner.
6. Run the commit to the workflow, and it is supposed to create a new docker-image
7. Publish this Docker image to your Docker Hub account. (If you do not have a Docker Hub account, then create one today) 
8. I will check the workflow, whether the action will be triggered successfully or not, Docker images, and Docker Hub link for the image. 
IMPORTANT--  Stop the EC2 just after completing your work. I will start the EC2 when I check it. But run provide the CLI command, as like whenever I start the EC2, Docker will start and run all the services.

# Web App
This readme file is published by a node server hosted in the EC2. From the follwing docker image:

https://hub.docker.com/repository/docker/mdamanu/aman/tags/latest/sha256:25de2793249cacd806c26f4d216eccfb245fd4c0bba9c048cdb690369c0de65a

It should run once the EC2 starts

## Deployed Servers:
- Node Server: [Node](http://63.182.108.159:3000/)
- Nginx: [Nginx](http://63.182.108.159:81/)

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

## Every push build and deploys latest image to the private repository
## startup script are copied to home directory and used in systemd service
## deploy job on github workflow runs the `containers.sh`

# EC2 Instance Detail
- Instance ID: i-0f96d5bd90d54cb7e
- Instance Name: docker-github-assignment
- Instance IP: 63.182.108.159
- Instance Type: ubuntu
- Region: eu-central-1