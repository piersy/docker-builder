#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

#It is assumed that the version file exists in directory where the dockerfile exists
VERSION=$(cat "version")
PWD="$(pwd)";
#remove longest match of "*/" from front of PWD
DIRNAME=${PWD##*/}
FULL_IMAGE_NAME="${DIRNAME}:$VERSION";
