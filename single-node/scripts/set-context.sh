#!/bin/bash
K8S_NAMESPACE="default"
K8S_CONTEXT=$(kubectl config view | grep current-context | awk '{print $2}')

kubectl config set-context $K8S_CONTEXT --namespace=$K8S_NAMESPACE

echo "default namespace is now \"$K8S_NAMESPACE\"";
