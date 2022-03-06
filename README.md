# Lavalink-Docker-RPI

#### About
This repository contains the build script for my docker image that bundles Azul Zulu JRE 13 and Lavalink for the Raspberry Pi's aarch64 architecture. It's only tested on Raspberrypi OS (64 bit) with a Raspberry PI 4 (8GB version).

The created image will work like the [fredboat/lavalink](https://hub.docker.com/r/fredboat/lavalink/) one, but only run on arm64 devices. <br>
The image's working directory will be `/opt/Lavalink`, which is where you would mount your config file. (application.yml)

#### Example Usage
```
docker run -it --rm -v ${PWD}/application.yml:/opt/Lavalink/application.yml vpleft/lavalink-rpi
```

#### Docker Hub
The build image can be found here: [vpleft/lavalink-rpi](https://hub.docker.com/r/vpleft/lavalink-rpi) <br>
On amd64 devices, you should use [fredboat/lavalink](https://hub.docker.com/r/fredboat/lavalink/) instead!
