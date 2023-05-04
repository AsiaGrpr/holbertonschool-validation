#!/bin/bash -e
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
mkdir hugo
tar -xzf ./hugo_extended_0.84.0_Linux-64bit.tar.gz -C ./hugo
unlink hugo_extended_0.84.0_Linux-64bit.tar.gz
export PATH=$PATH:./hugo
chmod u+x ./hugo/hugo
echo "Successfully initialized"