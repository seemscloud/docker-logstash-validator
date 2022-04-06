#!/bin/bash

for PIPELINE in `ls -1 config/pipelines` ; do
#  logstash --config.test_and_exit -f config/pipelines/"${PIPELINE}"
#
#  if [ "${?}" != "0" ] ; then
#    echo "Validation failed, please fix syntax.."
#  else
#    echo "Validation success, copying configuration files.."
    rm -rf /data/pipelines/*
    mkdir -p /data/pipelines/"${PIPELINE}"
    cp -R config/pipelines/"${PIPELINE}"/* /data/pipelines/"${PIPELINE}"
done