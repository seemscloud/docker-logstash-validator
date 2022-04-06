#!/bin/bash

LOG_LINE='{"message":"INFO 2021:02:03 12:31:59 foo=1 bar=2 tar=3 pac=4"}'

while true; do
  MESSAGE="${LOG_LINE}"

  curl -X PUT http://logstash:8080  \
       -H "content-type: application/json" \
       -d "${MESSAGE}" --silent
  sleep 1
done