#!/bin/bash

#
# Done Setup
#

if [ "$#" -eq 0 ]; then
    echo "No arguments supplied, sleeping forever..."
    sleep infinity
    exit 0

else
    echo "Starting setup with arguments: $*"
    exec "$@"

fi
