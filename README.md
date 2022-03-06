# Lavalink-Docker-RPI

#### About
This repository's goal is to provide a build script for a docker image that bundles Azul Zulu JRE 13 with Lavalink for the Raspberry PI's arm64 architecture because the official image ([fredboat/lavalink](https://hub.docker.com/r/fredboat/lavalink/)) does not support it yet. It has been only tested on Raspberrypi OS (64 bit) running on a Raspberry PI 4 (8GB version).

The created image will work like the official [fredboat/lavalink](https://hub.docker.com/r/fredboat/lavalink/) one, but only run on arm64 devices. <br>
The image's working directory will be `/opt/Lavalink`, which is where you would mount your config file. (application.yml)

#### Example Usage
```
docker run -it --rm -v ${PWD}/application.yml:/opt/Lavalink/application.yml vpleft/lavalink-rpi
```

#### Docker Hub
The built image can be found here: [vpleft/lavalink-rpi](https://hub.docker.com/r/vpleft/lavalink-rpi) <br>
On amd64 devices, you should use the official [fredboat/lavalink](https://hub.docker.com/r/fredboat/lavalink/) instead!
