#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    docker buildx build --load \
       --tag ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-} \
       --tag ghcr.io/cirruslabs/flutter:$DOCKER_TAG \
       --build-arg flutter_version=$FLUTTER_VERSION \
       sdk
    exit 0
fi

echo $GITHUB_TOKEN | docker login ghcr.io -u fkorotkov --password-stdin

docker buildx build --push \
   --tag ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-} \
   --tag ghcr.io/cirruslabs/flutter:$DOCKER_TAG \
   --build-arg flutter_version=$FLUTTER_VERSION \
   sdk
