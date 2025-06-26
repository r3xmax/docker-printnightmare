#!/bin/bash

IMAGE_NAME="printnightmare-exploit"
CONTAINER_NAME="printnightmare"

# Check if docker image exists
if [[ "$(docker images -q $IMAGE_NAME 2> /dev/null)" == "" ]]; then
  echo "[+] Image $IMAGE_NAME not found. Building now..."
  docker build -t $IMAGE_NAME .
  echo "[+] Build complete!"
else
  echo "[+] Image $IMAGE_NAME already exists. Skipping build."
fi

# Run the container and deleting it when finish
echo "[+] Starting the Docker container..."
docker run -it --rm --name $CONTAINER_NAME $IMAGE_NAME

echo "[!] Container stopped. Thanks for using!"
