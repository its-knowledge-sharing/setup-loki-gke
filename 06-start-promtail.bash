#!/bin/bash

DATA_DIR=$(pwd)
LOKI_DOMAIN=130.211.15.76  #Change this to match ingress IP address of Cortex
INSTANCE=$(hostname)
ENV_FILE=.env

sudo cat << EOF > ${ENV_FILE}
DATA_DIR=${DATA_DIR}
INSTANCE=${INSTANCE}
CONTAINERS_LOG_DIR=/var/lib/docker/containers
LOKI_DOMAIN=${LOKI_DOMAIN}
REGION=us-central1
ZONE=us-central1-a
GROUP=demo
EOF

sudo docker-compose up -d --remove-orphans
