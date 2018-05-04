#!/bin/bash


if [ -z "$CONSUL_DATA_DIR" ]; then
   mkdir -p /consul/data
   CONSUL_DATA_DIR=/consul/data
fi


if [ -z "$CONSUL_CONFIG_DIR" ]; then
   mkdir -p /consul/config
   CONSUL_CONFIG_DIR=/consul/config
fi


/consul/consul agent \
       -data-dir="$CONSUL_DATA_DIR" \
       -config-dir="$CONSUL_CONFIG_DIR" \
       "${@}"