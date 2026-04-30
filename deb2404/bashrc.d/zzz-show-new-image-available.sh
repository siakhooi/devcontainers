#!/bin/bash

readonly new_devcontainer="siakhooi/devcontainer:deb2604"
readonly expire_date='May 2029'

echo.info -n "
A new devcontainer image is available: "
echo.cyan "$new_devcontainer
"
echo.info -n "The current image will be available until: "
echo.cyan "$expire_date
"
