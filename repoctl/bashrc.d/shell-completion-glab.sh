#!/bin/bash

if command -v glab >/dev/null 2>&1; then
	# shellcheck source=/dev/null
	source <(glab completion -s bash)
fi
