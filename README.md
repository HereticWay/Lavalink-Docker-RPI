# Lavalink-Docker-RPI

This repository contains the build script for my docker image that bundles Azul Zulu JRE 13 and Lavalink for the Raspberry Pi's aarch64 architecture. It's only tested on Raspberrypi OS (64 bit) with a Raspberry PI 4 (8GB version).

The created image will work like the https://hub.docker.com/r/fredboat/lavalink/ one, but only run on arm64 devices.
The image's working directory will be `/opt/Lavalink`, which is where you would mount your config file. (application.yml)

On amd64 devices, you should use https://hub.docker.com/r/fredboat/lavalink/ instead!
