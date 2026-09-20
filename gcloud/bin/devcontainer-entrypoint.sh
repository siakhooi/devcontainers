#!/bin/bash

# Devcontainer entrypoint script for images
for f in /etc/devcontainer/entrypoint.d/*.sh; do
	[ -e "$f" ] || continue
	echo "Running $f"
	# shellcheck disable=SC1090
	. "$f"
done

# Devcontainer entrypoint scripts from external, to be mounted by user
for f in /opt/devcontainer/entrypoint.d/*.sh; do
	[ -e "$f" ] || continue
	echo "Running $f"
	# shellcheck disable=SC1090
	. "$f"
done

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
