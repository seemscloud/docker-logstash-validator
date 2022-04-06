#!/bin/bash

LOG_LINE='{"message":"2021:02:03 12:31:59|[name]=<Jan>|surname=<Kowalski>|birth_date=1993|country=Poland"}'

while true; do
  MESSAGE="${LOG_LINE}"

  curl -X PUT http://logstash:8080  \
       -H "content-type: application/json" \
       -d "${MESSAGE}" --silent
  sleep 1
done