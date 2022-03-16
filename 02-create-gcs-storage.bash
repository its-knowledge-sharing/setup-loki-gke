#!/bin/bash

source .env

gsutil mb -b on -l us-central1 -u ${PROJECT} gs://${BUCKET_NAME}/ 
gsutil ls gs://${BUCKET_NAME}/
