#!/usr/bin/env bash

set -e

docker history cirrusci/flutter:${FLUTTER_VERSION/+/-}
docker history cirrusci/flutter:$DOCKER_TAG

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push cirrusci/flutter:${FLUTTER_VERSION/+/-}
docker push cirrusci/flutter:$DOCKER_TAG
#docker push cirrusci/flutter:${FLUTTER_VERSION/+/-}-web
#docker push cirrusci/flutter:$DOCKER_TAG-web
