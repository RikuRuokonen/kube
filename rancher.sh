#!/bin/bash

helm repo add rancher-stable https://releases.rancher.com/server-charts/stable
helm install rancher --namespace cattle-system --values rancher-values.yaml rancher-stable/rancher