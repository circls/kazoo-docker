#!/bin/sh
NETWORK=${NETWORK:-"kazoo"}
REPO=${1:-"https://github.com/2600hz/kazoo-ui.git"}
echo Using repository $REPO
../bin/get-commit $REPO > etc/commit
echo Using repository $REPO commit: `cat etc/commit`
docker build -t $NETWORK/kazoo-ui  --build-arg REPO=$REPO .
