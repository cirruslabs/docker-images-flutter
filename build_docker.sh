#!/usr/bin/env bash

set -e

# pull to make sure we are not rebuilding for nothing
docker pull cirrusci/flutter:base

docker build --tag cirrusci/flutter:base base
docker build --tag cirrusci/flutter:1.1.0 --tag cirrusci/flutter:latest 1.1.0