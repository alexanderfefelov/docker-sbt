#!/usr/bin/env bash

set -e

[ $UID -eq 0 ] || exec sudo bash "$0" "$@"

APP_HOME=play-scala-hello-world
CACHE_DIR=$APP_HOME.cache

mkdir --parents $CACHE_DIR

docker run \
  --rm \
  --publish 9000:9000 \
  --volume $(pwd)/$APP_HOME:/workdir \
  --volume $(pwd)/$CACHE_DIR:/root/.cache/coursier \
  quay.io/alexanderfefelov/sbt \
    sbt run
