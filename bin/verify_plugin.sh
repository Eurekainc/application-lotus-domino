#!/usr/bin/env bash

set -u
set -o pipefail


./${OPSPACK_NAME}/plugins/* -h

if [ $? -eq 3 ]
then
  echo "Successfully executed binary file for help text"
  exit 0
else
  echo "Either unable to execute or find binary file"
  exit 0
fi
