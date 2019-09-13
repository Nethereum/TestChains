#!/bin/bash
LATEST_VERSION=$(curl -s "https://api.github.com/repos/ethereum/go-ethereum/releases/latest" | awk -F '"' '/tag_name/{print $4}'| xargs)
LATEST_BUILD=$(curl -s "https://api.github.com/repos/ethereum/go-ethereum/releases/latest" | awk -F '"' '/tag_name/{print $12}'| xargs)
echo $LATEST_BUILD
LOCAL_VERSION=$(<version.txt)
echo current version -"$LATEST_VERSION"- our version -"$LOCAL_VERSION"-
if [ "$LATEST_VERSION"  == "$LOCAL_VERSION" ]; then
    echo "You are already running the latest version of Geth"
 exit 0
else
 echo "Geth versions don't match"
 wget -O geth.tar.gz https://api.github.com/repos/ethereum/go-ethereum/releases/latest/$LATEST_VERSION.tar.gz
tar -xzvf geth.tar.gz
cp -R ./geth*/bin/ ./bin/
cp -R ./geth*/lib/ ./lib/
rm geth.tar.gz
rm -rf ./geth-$LATEST_VERSION/
echo $LATEST_VERSION | tee version.txt
 exit 1
fi
