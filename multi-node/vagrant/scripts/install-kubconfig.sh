#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl config set-cluster vagrant-multi-cluster \
  --server=https://172.19.0.101:443 \
  --certificate-authority=$DIR/../ssl/ca.pem

kubectl config set-credentials vagrant-multi-admin \
  --certificate-authority=$DIR/../ssl/ca.pem \
  --client-key=$DIR/../ssl/admin-key.pem \
  --client-certificate=$DIR/../ssl/admin.pem

kubectl config set-context vagrant-multi \
  --cluster=vagrant-multi-cluster \
  --user=vagrant-multi-admin

kubectl config use-context vagrant-multi
