#!/bin/bash

<<info

This Script will Install Packages
---that you pass in arguments---

eg:- ./install_packages.sh nginx
     ./install_packages.sh docker.io
     ./install_packages.sh unzip
info

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null
# the output will redirect to /dev/null
# the whole package wont only the output
# /dev/null is like dustbin where unnecessary things are stored
# -y is used for the confirmation that always asked after the package installation

echo "Installation Completed"
