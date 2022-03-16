#!/bin/bash

source .env

gcloud iam service-accounts create ${SA_NAME} --display-name="Service account for Cortex"

gcloud projects add-iam-policy-binding ${PROJECT} \
    --member="serviceAccount:${SA_NAME}@${PROJECT}.iam.gserviceaccount.com" \
    --role="roles/storage.objectAdmin"
