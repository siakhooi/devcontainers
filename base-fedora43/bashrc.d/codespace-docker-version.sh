#!/bin/bash

if [[ $CODESPACES == "true" ]]; then
	export DOCKER_API_VERSION=1.43  # current max supported docker client
fi
