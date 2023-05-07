#!/bin/bash

apt-get update
apt-get install -y hugo make
apt-get install -y make golang-go git curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb -o hugo.deb
apt install ./hugo.deb
make build
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi
