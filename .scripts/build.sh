#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo.error "Usage: $(basename "$0") dockerName"
    exit 0
fi
dockerName=$1
if [[ ! -d $dockerName ]]; then
    echo.error "Docker directory $dockerName does not exist"
    exit 1
fi
echo "Building $dockerName"
cd $dockerName
make build
mkdir -p ../.devcontainer
cp -v devcontainer.json ../.devcontainer/devcontainer.json

cd ..
