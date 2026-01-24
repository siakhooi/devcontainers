#!/bin/bash

if command -v gh >/dev/null 2>&1; then
	# shellcheck source=/dev/null
	source <(gh completion --shell bash)
fi
