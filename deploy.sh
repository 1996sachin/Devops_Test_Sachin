#!/bin/bash

APP_NAME="node_app"

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Build Docker image
echo "Building Docker image..."
docker compose build

# Start the app
echo "Starting the app using docker compose..."
docker compose up -d

# Wait a few seconds
sleep 5

# Check if container is running
if [ "$(docker ps -q -f name=$APP_NAME)" ]; then
    echo "Success: $APP_NAME container is running."
else
    echo "Error: $APP_NAME container failed to start."
    docker compose ps
    exit 1
fi
