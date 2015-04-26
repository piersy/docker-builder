#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

#Get the directory that this file is in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#set the $VERSION variable
source "${DIR}/common_variables.sh";

echo "Running Image: " $FULL_IMAGE_NAME
docker run -d -p 8080:8080 $FULL_IMAGE_NAME
