#!/usr/bin/env bash

set -e

docker history ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-}
docker history ghcr.io/cirruslabs/flutter:$DOCKER_TAG

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-}
docker push ghcr.io/cirruslabs/flutter:$DOCKER_TAG
#docker push ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION/+/-}-web
#docker push ghcr.io/cirruslabs/flutter:$DOCKER_TAG-web
