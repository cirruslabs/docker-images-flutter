#!/usr/bin/env bash

set -e

docker build --cache-from cirrusci/flutter:${FLUTTER_VERSION/+/-} \
             --tag cirrusci/flutter:${FLUTTER_VERSION/+/-} \
             --tag cirrusci/flutter:$DOCKER_TAG \
             --build-arg flutter_version=$FLUTTER_VERSION \
             sdk
docker build --cache-from cirrusci/flutter:${FLUTTER_VERSION/+/-}-web \
             --tag cirrusci/flutter:${FLUTTER_VERSION/+/-}-web \
             --tag cirrusci/flutter:$DOCKER_TAG-web \
             --build-arg flutter_tag=${FLUTTER_VERSION/+/-} \
             web
