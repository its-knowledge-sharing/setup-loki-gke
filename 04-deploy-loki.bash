#!/bin/bash

source .env

NS=loki
KEY_FILE=sm.json
SA=${SA_NAME}@${PROJECT}.iam.gserviceaccount.com
SECRET=gcp-sa

#kubectl create ns ${NS}

# Create service account secret
#gcloud iam service-accounts keys create ${KEY_FILE} --iam-account=${SA}
#kubectl delete secret ${SECRET} -n ${NS}
#kubectl create secret generic ${SECRET} --from-file=gcp-sa-file=${KEY_FILE} -n ${NS}


helm repo add loki-helm https://grafana.github.io/helm-charts/

helm template loki loki-helm/loki-distributed \
-f loki/loki.yaml \
--set customParams.gcsBucket=${BUCKET_NAME} \
--version 0.45.1 \
--namespace ${NS} > tmp-loki.yaml

#kubectl apply -n ${NS} -f tmp-loki.yaml

#kubectl apply -n ${NS} -f loki/loki-ing.yaml
