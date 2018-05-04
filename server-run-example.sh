#!/usr/bin/env bash


docker run --rm -it --network host ozlevka/consul-cloud:latest \
       -bind=192.168.1.108 \
       -bootstrap-expect=1 \
       -server \
       -ui \
       -client=0.0.0.0