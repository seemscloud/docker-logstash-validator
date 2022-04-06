#!/bin/bash

LOG_LINE='{"message":"afoo=1&abar=2&acar=3 key1:value1 key2:value2"}'

while true; do
  MESSAGE="${LOG_LINE}"

  curl -X PUT http://logstash:8080  \
       -H "content-type: application/json" \
       -d "${MESSAGE}" --silent
  sleep 1
done
