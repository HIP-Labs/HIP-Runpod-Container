#!/bin/bash

# Define the path to the docker-bake.hcl file
DOCKER_BAKE_FILE="hip/docker-bake.hcl"

# Check if the file exists
if [ ! -f "$DOCKER_BAKE_FILE" ]; then
    echo "Error: docker-bake.hcl file not found in hip folder."
    exit 1
fi

# Extract the value of VERSION variable using awk
VERSION=$(awk '/default = / {print $3}' "$DOCKER_BAKE_FILE")

# # read version from file docker-bake.hcl
docker run --gpus all -it hamzatrq/bittensor-hip:$VERSION /bin/bash
