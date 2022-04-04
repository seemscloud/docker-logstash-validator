#!/bin/bash

for PIPELINE in `ls config/pipelines` ; do
  logstash --config.test_and_exit -f config/pipelines/"${PIPELINE}"

  if [ "${?}" != "0" ] ; then
    echo "Validation failed, please fix syntax.."
  else
    echo "Validation success, copying configuration files.."
    rm -rf /data/pipelines/"${PIPELINE}"/*
    mkdir -p /data/pipelines/"${PIPELINE}"
    cp -R config/pipelines/"${PIPELINE}"/* /data/pipelines/"${PIPELINE}"
  fi
done