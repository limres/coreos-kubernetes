#!/bin/bash
sudo cp /lib/systemd/system/docker.service /etc/systemd/system/
sudo sed -e $'/^ExecStart/ s/$/ --insecure-registry docker.k8s/' -i /etc/systemd/system/docker.service
sudo systemctl daemon-reload
sudo systemctl restart docker
