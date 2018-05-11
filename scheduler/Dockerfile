FROM python:3.6-slim-jessie

ENV CONTAINERPILOT_VERSION=3.8.0
ENV CONTAINERPILOT_URL="https://github.com/joyent/containerpilot/releases/download/$CONTAINERPILOT_VERSION/containerpilot-$CONTAINERPILOT_VERSION.tar.gz"


RUN apt-get update && apt-get install -y wget curl zip unzip tar \
    &&  wget -O containerpilot-$CONTAINERPILOT_VERSION.tar.gz $CONTAINERPILOT_URL \
    &&  tar -xzf containerpilot-$CONTAINERPILOT_VERSION.tar.gz -C /usr/bin \
    &&  rm containerpilot-$CONTAINERPILOT_VERSION.tar.gz


COPY scripts/ /scripts
COPY config.json5 /

ENTRYPOINT ["/usr/bin/containerpilot", "-config", "config.json5"]