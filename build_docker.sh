#!/usr/bin/env bash

set -e

docker build --tag cirrusci/flutter:base base
docker build --tag cirrusci/flutter:0.1.7 0.1.7