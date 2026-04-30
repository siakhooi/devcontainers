#!/bin/bash

readonly new_devcontainer="siakhooi/devcontainer:rpm44"
readonly expire_date='Dec 2026'

echo.info -n "
A new devcontainer image is available: "
echo.cyan "$new_devcontainer
"
echo.info -n "The current image will be available until: "
echo.cyan "$expire_date
"
