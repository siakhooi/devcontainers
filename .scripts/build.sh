#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $(basename "$0") dockerName" 2>&1
    exit 0
fi
dockerName=$1
if [[ ! -d $dockerName ]]; then
    echo "Docker directory $dockerName does not exist" 2>&1
    exit 1
fi
# shellcheck disable=SC1091
source ./variables.env # global environment variables

echo "Building $dockerName"
cd "$dockerName" || {
  echo "Failed to enter directory $dockerName" 2>&1
  exit 1
}

# shellcheck disable=SC1091
source ./variables.env # docker-specific environment variables

docker build . \
	-t "${REGISTRY_USERNAME_DOCKER}/${IMAGE_NAME}:${IMAGE_TAG}" \
	-t "ghcr.io/${REGISTRY_USERNAME_GHCR}/${IMAGE_NAME}:${IMAGE_TAG}"

mkdir -p ../.devcontainer
cp -v devcontainer.json ../.devcontainer/devcontainer.json

cd ..
