#!/bin/bash

# Devcontainer bashrc scripts
for f in /etc/devcontainer/bashrc.d/*.sh; do
	[ -e "$f" ] || continue
	# shellcheck disable=SC1090
	. "$f"
done

# Devcontainer bashrc scripts from external, to be mounted by user
for f in /opt/devcontainer/bashrc.d/*.sh; do
	[ -e "$f" ] || continue
	# shellcheck disable=SC1090
	. "$f"
done

commands=(ack awk curl git gpg grep make nano sed sudo tar tree vi wget zip)

found=()
not_found=()
# Check if each command is available
for cmd in "${commands[@]}"; do
	if ! command -v "$cmd" >/dev/null 2>&1; then
		not_found+=("$cmd")
	else
		found+=("$cmd")
	fi
done

[ ${#found[@]} -ne 0 ] && echo "Available: ${found[*]}"
[ ${#not_found[@]} -ne 0 ] && echo "Not Available: ${not_found[*]}"
