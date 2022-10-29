#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=sakshi781996/api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag api sakshi781996/api:v1.0.0
docker images
docker login

# Step 3:
# Push image to a docker repository
docker push sakshi781996/api:v1.0.0