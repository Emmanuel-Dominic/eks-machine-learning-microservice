#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=manueldominic/udacity-devops-app:1.1

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag udacity-devops-app:1.1 manueldominic/udacity-devops-app:1.1

# Step 3:
# Push image to a docker repository
docker image push manueldominic/udacity-devops-app:1.1
