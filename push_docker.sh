#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push cirrusci/flutter:${FLUTTER_VERSION/+/-}
docker push cirrusci/flutter:$DOCKER_TAG
docker push cirrusci/flutter:${FLUTTER_VERSION/+/-}-web
docker push cirrusci/flutter:$DOCKER_TAG-web

curl -X POST https://hooks.microbadger.com/images/cirrusci/flutter/jvUQ_07dNfmCwsULt6N9qYdgsNg=
