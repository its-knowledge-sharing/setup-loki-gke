#!/bin/bash

kubectl get secret grafana-loki \
-n grafana-loki \
-o jsonpath="{.data.admin-password}" | base64 --decode
