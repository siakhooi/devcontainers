#!/bin/bash

readonly new_devcontainer="siakhooi/devcontainer:nodejs26"
readonly expire_date='Apr 2028'

echo.info -n "
A new devcontainer image is available: "
echo.cyan "$new_devcontainer
"
echo.info -n "The current image will be available until: "
echo.cyan "$expire_date
"
