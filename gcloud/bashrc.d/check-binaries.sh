#!/bin/bash

# Devcontainer check binaries from internal, to be provided by devcontainer
for f in /etc/devcontainer/check-binaries/*; do
	[ -e "$f" ] || continue
  echo -n 'bin check: '
	devy-check-binaries -V -f "$f"
done

# Devcontainer check binaries from external, to be mounted by user
for f in /opt/devcontainer/check-binaries/*; do
	[ -e "$f" ] || continue
  echo -n 'bin check: '
	devy-check-binaries -V -f "$f"
done
