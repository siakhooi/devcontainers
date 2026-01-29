#!/bin/bash

# add /opt/bin, /opt/xxxx/bin
while read -r dir; do
  echo.debug "Adding ${dir} to PATH"
  export PATH="${dir}:${PATH}"
done < <(find /opt -maxdepth 2 -wholename '**/bin' -type d)
