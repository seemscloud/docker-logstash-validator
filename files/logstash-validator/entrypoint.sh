#!/bin/bash

for PIPELINE in `ls config/pipelines` ; do
#  logstash --config.test_and_exit -f config/pipelines/"${PIPELINE}"
#
#  if [ "${?}" != "0" ] ; then
#    echo "Validation failed.. exiting.." && exit
#  else
    rm -rf /data/pipelines/"${PIPELINE}"/*
    mkdir -p /data/pipelines/"${PIPELINE}"
    cp -R config/pipelines/"${PIPELINE}"/* /data/pipelines/"${PIPELINE}"
#  fi
done