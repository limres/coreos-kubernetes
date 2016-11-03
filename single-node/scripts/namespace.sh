#!/bin/bash
K8S_NAMESPACE=$1

if [ "$K8S_NAMESPACE" = "" ]; then
  K8S_NAMESPACE="default"
fi

K8S_CONTEXT=$(kubectl config view | grep current-context | awk '{print $2}')

kubectl config set-context $K8S_CONTEXT --namespace=$K8S_NAMESPACE

echo "default namespace is now \"$K8S_NAMESPACE\"";
