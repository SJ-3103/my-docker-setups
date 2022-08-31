#! /bin/bash

echo "Setting up nodejs for docker....."

echo "Building nodejs image from Dockerfile"
docker build -t my-nodejsapp .

echo "Creating container from my-nodejsapp image....."
docker run -itd --name my-nodejs-container --publish 3000:3000 my-nodejsapp