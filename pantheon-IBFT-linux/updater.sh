#!/bin/bash
LATEST_VERSION=$(curl -s "https://api.github.com/repos/PegaSysEng/pantheon/releases/latest" | awk -F '"' '/tag_name/{print $4}'| xargs)
LOCAL_VERSION=$(<version.txt)
echo current version -"$LATEST_VERSION"- our version -"$LOCAL_VERSION"-

if [ "$LATEST_VERSION"  == "$LOCAL_VERSION" ]; then
    echo "You are already running the latest version of Pantheon"
 exit 0
else
 echo "Pantheon versions don't match"
 curl -L "https://api.github.com/repos/PegaSysEng/pantheon/zipball/{$LATEST_VERSION}" --output pantheon.zip
 # rm -rf bin
 # rm -rf lib
unzip -o pantheon.zip
echo $LATEST_VERSION | tee version.txt
 exit 1
fi
