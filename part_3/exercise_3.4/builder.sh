#!/bin/bash

GITHUB_URL="https://github.com/$1.git"
DOCKERHUB_TAG="$2"


# Check that user and password is specified
if [ -z "${DOCKER_USER}" ]; then
    echo "DOCKER_USER is empty"
    exit 1
fi
if [ -z "${DOCKER_PWD}" ]; then
    echo "DOCKER_PWD is empty"
    exit 1
fi

# Login to Dockerhub
echo "Logging into Dockerhub..."
echo $DOCKER_PWD | docker login -u $DOCKER_USER --password-stdin

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
