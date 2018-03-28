#!/usr/bin/env bash

set -e

docker build --tag cirrusci/flutter:base base
docker build --tag cirrusci/flutter:0.2.4 --tag cirrusci/flutter:latest 0.2.4