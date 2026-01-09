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
echo "Building $dockerName"
cd "$dockerName" || {
  echo "Failed to enter directory $dockerName" 2>&1
  exit 1
}
make build
mkdir -p ../.devcontainer
cp -v devcontainer.json ../.devcontainer/devcontainer.json

cd ..
