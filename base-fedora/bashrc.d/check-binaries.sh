#!/bin/bash

# Devcontainer check binaries from internal, to be provided by devcontainer
for f in /etc/devcontainer/check-binaries/*; do
	[ -e "$f" ] || continue
	devy-check-binaries -f "$f"
done

# Devcontainer check binaries from external, to be mounted by user
for f in /opt/devcontainer/check-binaries/*; do
	[ -e "$f" ] || continue
	devy-check-binaries -f "$f"
done
