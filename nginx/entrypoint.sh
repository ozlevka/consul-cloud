#!/bin/bash

cp /server.conf /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"