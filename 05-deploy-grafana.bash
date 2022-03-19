#!/bin/bash

source .env

NS=grafana-loki
kubectl create ns ${NS}

helm repo add grafana-helm https://grafana.github.io/helm-charts

helm template grafana grafana-helm/grafana \
-f grafana/grafana.yaml \
--skip-tests \
--namespace ${NS} > tmp-grafana-loki.yaml

kubectl apply -n ${NS} -f tmp-grafana-loki.yaml

kubectl apply -n ${NS} -f grafana/grafana-ing.yaml
