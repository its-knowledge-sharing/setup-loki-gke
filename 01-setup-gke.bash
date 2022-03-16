#!/bin/bash

gcloud container clusters create gke-loki --zone us-central1-a

gcloud container clusters get-credentials gke-loki --zone us-central1-a

kubectl get nodes
