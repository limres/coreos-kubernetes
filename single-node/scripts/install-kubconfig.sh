#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl config set-cluster vagrant-single-cluster \
  --server=https://172.18.0.101:8443 \
  --certificate-authority=$DIR/../ssl/ca.pem

kubectl config set-credentials vagrant-single-admin \
  --certificate-authority==$DIR/../ssl/ca.pem \
  --client-key==$DIR/../ssl/admin-key.pem \
  --client-certificate==$DIR/../ssl/admin.pem

kubectl config set-context vagrant-single \
  --cluster=vagrant-single-cluster \
  --user=vagrant-single-admin

kubectl config use-context vagrant-single
