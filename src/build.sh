#!/bin/bash

VERSION=11.3.0

# Install preliminary packages
apt-get update
apt-get -y install wget xvfb libasound2

# Create needed directories:
mkdir /src /diagrams /dist

# Install draw.io
cd /src
wget https://github.com/jgraph/drawio-desktop/releases/download/v${VERSION}/draw.io-amd64-${VERSION}.deb
dpkg -i /src/draw.io-amd64-${VERSION}.deb

# Install extra packages needed by draw.io
apt-get install -f -y
