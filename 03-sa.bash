#!/bin/bash

source .env

gcloud iam service-accounts create ${SA_NAME} --project ${PROJECT} --display-name="Service account for Loki"

gcloud projects add-iam-policy-binding ${PROJECT} \
    --member="serviceAccount:${SA_NAME}@${PROJECT}.iam.gserviceaccount.com" \
    --project ${PROJECT} \
    --role="roles/storage.objectAdmin"
