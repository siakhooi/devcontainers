#!/bin/bash

if command -v fzf >/dev/null 2>&1; then
	# Set up fzf key bindings and fuzzy completion
	eval "$(fzf --bash)"
fi
