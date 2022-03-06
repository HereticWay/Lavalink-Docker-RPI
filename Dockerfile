FROM debian:bullseye


# Get some dependencies
RUN apt-get update \
    && apt-get -y --no-install-recommends install curl ca-certificates \
    && apt-get clean


# Get Azul Zulu Java 13
WORKDIR /usr/lib/jvm
RUN curl -L https://cdn.azul.com/zulu-embedded/bin/zulu13.46.15-ca-jre13.0.10-linux_aarch64.tar.gz \
    | tar --extract --gzip
RUN mv ./zulu* ./zulu-13-aarch64

ENV JAVA_HOME=/usr/lib/jvm/zulu13.46.15-ca-jre13.0.10-linux_aarch64/


# Get latest Lavalink
WORKDIR /opt/Lavalink
RUN curl -L -O https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar


ENTRYPOINT ["/usr/lib/jvm/zulu-13-aarch64/bin/java", "-Djdk.tls.client.protocols=TLSv1.1,TLSv1.2", "-Xmx4G", "-jar", "./Lavalink.jar"]
