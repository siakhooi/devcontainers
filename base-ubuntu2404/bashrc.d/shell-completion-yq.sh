#!/bin/bash

if command -v yq >/dev/null 2>&1; then
	# shellcheck source=/dev/null
	source <(yq shell-completion bash)
fi
