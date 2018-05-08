#!/usr/bin/env bash

set -e

docker build --tag cirrusci/flutter:base base
docker build --tag cirrusci/flutter:0.4.0 --tag cirrusci/flutter:latest 0.4.0