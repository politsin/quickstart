#!/bin/bash

cd /opt/quickstart
if [ ! -f ./apps/nginx/default/dhparam-2048.pem ]; then
  openssl dhparam -out ./apps/nginx/default/dhparam-2048.pem 2048
fi
docker-compose up -d nginx
docker-compose up -d mysql
docker-compose up -d php
