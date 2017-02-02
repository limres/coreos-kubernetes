#!/bin/bash
K8S_NAMESPACE=${1:="default"}

kubectl config set-context vagrant-single --namespace=$K8S_NAMESPACE

echo "namespace \"$K8S_NAMESPACE\" set";
