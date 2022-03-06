#!/bin/bash

LONG_VERSION="1.0"
SHORT_VERSION="1"

docker build -t lavalink-rpi .
docker tag lavalink-rpi vpleft/lavalink-rpi:latest
docker tag lavalink-rpi vpleft/lavalink-rpi:$LONG_VERSION
docker tag lavalink-rpi vpleft/lavalink-rpi:$SHORT_VERSION
