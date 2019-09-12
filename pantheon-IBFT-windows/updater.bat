LATEST_VERSION=$(Invoke-Method -s "https://api.github.com/repos/PegaSysEng/pantheon/releases/latest" | awk -F '"' '/tag_name/{print $4}'| xargs)
LOCAL_VERSION=$(<version.txt)
echo current version -"$LATEST_VERSION"- our version -"$LOCAL_VERSION"-

if [ "$LATEST_VERSION"  == "$LOCAL_VERSION" ]; then
    echo "You are already running the latest version of Pantheon"
 exit 0
else
 echo "Pantheon versions don't match"
wget -O pantheon.tar.gz https://bintray.com/consensys/pegasys-repo/download_file?file_path=pantheon-$LATEST_VERSION.tar.gz
tar -xzvf pantheon.tar.gz
cp -R ./pantheon*/bin/ ./bin/
cp -R ./pantheon*/lib/ ./lib/
rm pantheon.tar.gz
rm -rf ./pantheon-$LATEST_VERSION/
echo $LATEST_VERSION | tee version.txt
 exit 1
fi