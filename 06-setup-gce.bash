#!/bin/bash

source .env

gcloud compute instances create promtail-001 \
    --image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20220308 \
    --image-project=${PROJECT} \
    --machine-type=projects/its-artifact-commons/zones/us-central1-a/machineTypes/e2-medium \
    --zone=us-central1-a
