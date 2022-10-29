#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sakshi781996/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy api --image=sakshi781996/api:v1.0.0

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/api-6c9c8c5487-fx7ql --address 0.0.0.0 8000:8000
