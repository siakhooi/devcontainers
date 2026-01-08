#!/bin/bash

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
