#!/usr/bin/env bash

set -e

# pull to make sure we are not rebuilding for nothing
docker pull cirrusci/flutter:base

docker build --cache-from cirrusci/flutter:base \
             --tag cirrusci/flutter:base base
docker build --cache-from cirrusci/flutter:$FLUTTER_VERSION \
             --tag cirrusci/flutter:$FLUTTER_VERSION \
             --tag cirrusci/flutter:$DOCKER_TAG \
             --build-arg flutter_version=$FLUTTER_VERSION \
             sdk
docker build --cache-from cirrusci/flutter:$FLUTTER_VERSION-web \
             --tag cirrusci/flutter:$FLUTTER_VERSION-web \
             --tag cirrusci/flutter:$DOCKER_TAG-web \
             --build-arg flutter_version=$FLUTTER_VERSION \
             web
