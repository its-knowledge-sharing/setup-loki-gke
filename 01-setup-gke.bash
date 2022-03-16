#!/bin/bash

gcloud container clusters create gke-loki --zone us-central1-a --project ${PROJECT}

gcloud container clusters get-credentials gke-loki --zone us-central1-a --project ${PROJECT}

kubectl get nodes
