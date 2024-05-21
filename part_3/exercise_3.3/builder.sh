#!/bin/bash

GITHUB_URL="https://github.com/$1.git"
DOCKERHUB_TAG="$2"

# Remove old directory if it exists
if test -d ./builder; then
    echo "Removing ./builder directory..."
    rm -rf ./builder
fi

# Clone github repo into ./builder
echo "Cloning $GITHUB_URL..."
git clone $GITHUB_URL builder

# Build Dockerfile
echo "Building Dockerfile..."
cd ./builder
docker build . -t $DOCKERHUB_TAG
cd ..

# Push to Dockerhub
echo "Pushing image to Dockerhub..."
docker push $DOCKERHUB_TAG

# Remove repo
echo "Removing local repository..."
rm -rf ./builder

echo "Done!"
