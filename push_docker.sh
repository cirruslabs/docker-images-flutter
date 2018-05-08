#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push cirrusci/flutter:base
docker push cirrusci/flutter:0.4.0
docker push cirrusci/flutter:latest