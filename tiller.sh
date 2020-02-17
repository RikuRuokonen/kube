#!/bin/bash

# New service account for tiller
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

# Initializer Tiller+Helm
helm init --service-account tiller

# Wait for deployment to be finished
kubectl -n kube-system rollout status deploy/tiller-deploy