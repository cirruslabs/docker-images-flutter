#!/usr/bin/env bash

set -e

docker build --cache-from ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-} \
             --tag ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-} \
             --tag ghcr.io/cirruslabs/flutter:$DOCKER_TAG \
             --build-arg flutter_version=$FLUTTER_VERSION \
             sdk
#docker build --cache-from ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-}-web \
#             --tag ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-}-web \
#             --tag ghcr.io/cirruslabs/flutter:$DOCKER_TAG-web \
#             --build-arg flutter_tag=${FLUTTER_VERSION/+/-} \
#             web
