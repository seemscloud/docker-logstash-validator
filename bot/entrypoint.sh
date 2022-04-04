#!/bin/bash

LOG_LINE="INFO  Lorem Ipsum is simply dummy text of the printing and typesetting industry"

while true; do
  DATE=`date +"%Y-%m-%d %H:%M:%S"`
  MESSAGE="${DATE} ${LOG_LINE}"

  curl -X PUT http://logstash:8080  \
       -H "content-type: application/json" \
       -d "{\"message\":\"${MESSAGE}\"}" --silent
  sleep 1
done
