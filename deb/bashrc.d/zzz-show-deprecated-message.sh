#!/bin/bash

readonly new_devcontainer="siakhooi/devcontainer:deb2404"

echo.warn -n "
This devcontainer is deprecated and will be removed in the future.
Please use the new devcontainer at "
echo.cyan "$new_devcontainer
"
