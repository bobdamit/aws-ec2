#!/bin/bash

docker run -d \
  --name mongo-apps0 \
  --restart always \
  -p 27017:27017 \
  -v ${MONGO_VOLUME_PATH}:/data/db \
  -e MONGO_INITDB_ROOT_USERNAME=${MONGO_USER} \
  -e MONGO_INITDB_ROOT_PASSWORD=${MONGO_PASSWORD} \
  mongo

docker run -d \
  --name mysql-apps0 \
  --restart always \
  -p 3307:3306 \
  -v ${MYSQL_VOLUME_PATH}:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  mysql
