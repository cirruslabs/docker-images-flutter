#!/usr/bin/env bash

set -e

docker buildx build --platform linux/amd64,linux/arm64 \
             --cache-from cirrusci/flutter:${FLUTTER_VERSION/+/-} \
             --tag cirrusci/flutter:${FLUTTER_VERSION/+/-} \
             --tag cirrusci/flutter:$DOCKER_TAG \
             --build-arg flutter_version=$FLUTTER_VERSION \
             sdk
