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

