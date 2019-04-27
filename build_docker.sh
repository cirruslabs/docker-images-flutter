#!/usr/bin/env bash

set -e

# pull to make sure we are not rebuilding for nothing
docker pull cirrusci/flutter:base

docker build --tag cirrusci/flutter:base base
docker build --tag cirrusci/flutter:$FLUTTER_VERSION \
             --build-arg flutter_version=$FLUTTER_VERSION \
             sdk

if [ $FLUTTER_VERSION == "stable" ]
then
  # `stable` channel will be our `latest`
  docker tag cirrusci/flutter:$FLUTTER_VERSION cirrusci/flutter:latest
fi
