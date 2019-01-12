#!/bin/sh

mkdir -p workspace && cd $_
wget https://raw.githubusercontent.com/ConsenSys/QuorumNetworkManager/v0.7.4-beta/setup.sh
chmod +x setup.sh
./setup.sh
source ~/.bashrc
cd QuorumNetworkManager/
node setupFromConfig.js