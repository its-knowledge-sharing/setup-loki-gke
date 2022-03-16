#!/bin/bash

source .env

gsutil mb -b on -l us-central1 gs://${BUCKET_NAME}/ -u ${PROJECT}
gsutil ls gs://${BUCKET_NAME}/ -u ${PROJECT}
