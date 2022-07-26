#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=manueldominic/udacity-devops-app:1.1
echo "Docker ID and Image: $dockerpath"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-devops-minikube --image=manueldominic/udacity-devops-app:1.1

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-devops-minikube --type=NodePort --port=80
