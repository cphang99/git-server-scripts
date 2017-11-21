#!/bin/bash

set -e

GIT_DIR=/home/pi/git
REPO_NAME=$1

if [ -z ${REPO_NAME} ] 
then
	echo "No repo specified"
	exit 1
fi

REPO_PATH="${GIT_DIR}"/"${REPO_NAME}".git
mkdir -p "${REPO_PATH}"
cd "${REPO_PATH}"
git init --bare --shared
cd - >/dev/null
