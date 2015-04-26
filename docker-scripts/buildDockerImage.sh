#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

#Get the directory that this file is in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#set the $VERSION variable
source "${DIR}/common_variables.sh";

echo "Building with tag: " ${FULL_IMAGE_NAME}
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) -v $(pwd):/build -t -i docker-builder bash -c "(cd /build/server && go build) && docker build -t ${FULL_IMAGE_NAME} /build"


