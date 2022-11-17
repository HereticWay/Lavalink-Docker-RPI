#!/bin/bash

LONG_VERSION="3.6.2"
SHORT_VERSION="3"

docker build -t lavalink-rpi .
docker tag lavalink-rpi vpleft/lavalink-rpi:latest
docker tag lavalink-rpi vpleft/lavalink-rpi:$LONG_VERSION
docker tag lavalink-rpi vpleft/lavalink-rpi:$SHORT_VERSION
