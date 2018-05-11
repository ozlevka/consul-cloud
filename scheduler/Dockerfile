FROM python:3.6-slim-jessie

ENV CONTAINERPILOT_VERSION=3.8.0
ENV CONTAINERPILOT_URL="https://github.com/joyent/containerpilot/releases/download/$CONTAINERPILOT_VERSION/containerpilot-$CONTAINERPILOT_VERSION.tar.gz"


RUN apt-get update && apt-get install -y wget curl zip unzip tar build-essential \
    &&  wget -O containerpilot-$CONTAINERPILOT_VERSION.tar.gz $CONTAINERPILOT_URL \
    &&  tar -xzf containerpilot-$CONTAINERPILOT_VERSION.tar.gz -C /usr/bin \
    &&  rm containerpilot-$CONTAINERPILOT_VERSION.tar.gz \
    &&  pip install --upgrade pip


COPY scripts/ /scripts
COPY ansible/ /ansible
COPY config.json5 /

RUN pip install -r /ansible/dependencies.txt

ENTRYPOINT ["/usr/bin/containerpilot", "-config", "config.json5"]