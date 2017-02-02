#!/bin/bash
PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl config set-cluster vagrant-single-cluster \
  --server=https://172.17.4.99:8443 \
  --certificate-authority=$PWD/../ssl/ca.pem

kubectl config set-credentials vagrant-single-admin \
  --certificate-authority=$PWD/../ssl/ca.pem \
  --client-key=$PWD/../ssl/admin-key.pem \
  --client-certificate=$PWD/../ssl/admin.pem

kubectl config set-context vagrant-single \
  --cluster=vagrant-single-cluster \
  --user=vagrant-single-admin

kubectl config use-context vagrant-single
