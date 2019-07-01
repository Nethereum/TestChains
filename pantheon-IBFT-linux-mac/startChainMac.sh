#!/bin/bash

rm ./IBFT-Network/Node-1/data/permissions_config.toml
rm ./IBFT-Network/Node-2/data/permissions_config.toml
rm ./IBFT-Network/Node-3/data/permissions_config.toml

cp ./IBFT-Network/permissions_config.toml ./IBFT-Network/Node-1/data/
cp ./IBFT-Network/permissions_config.toml ./IBFT-Network/Node-2/data/
cp ./IBFT-Network/permissions_config.toml ./IBFT-Network/Node-3/data/

rm -rf ./IBFT-Network/Node-1/data/database
rm -rf ./IBFT-Network/Node-2/data/database
rm -rf ./IBFT-Network/Node-3/data/database
#!/bin/bash

function tab () {
    local cmd=""
    local cdto="$PWD"
    local args="$@"

    if [ -d "$1" ]; then
        cdto=`cd "$1"; pwd`
        args="${@:2}"
    fi

    if [ -n "$args" ]; then
        cmd="; $args"
    fi

    if [ $TERM_PROGRAM = "Apple_Terminal" ]; then
        osascript 
            -e "tell application \"Terminal\"" \
                -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
                -e "do script \"cd $cdto; clear $cmd\" in front window" \
            -e "end tell"
            > /dev/null
    elif [ $TERM_PROGRAM = "iTerm.app" ]; then
        osascript
            -e "tell application \"iTerm\"" \
                -e "tell current terminal" \
                    -e "launch session \"Default Session\"" \
                    -e "tell the last session" \
                        -e "write text \"cd \"$cdto\"$cmd\"" \
                    -e "end tell" \
                -e "end tell" \
            -e "end tell" \
            > /dev/null
    fi
}

tab . sh startNode1.sh
# tab path_to_script2 sh script2
# tab path_to_script3 sh script3
# x-terminal-emulator -e ./bin/pantheon --data-path=./IBFT-Network/Node-1/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,PERM,ADMIN,MINER,DEBUG,TXPOOL --host-whitelist=* --rpc-http-cors-origins="all"
# sleep 3
# x-terminal-emulator -e ./bin/pantheon --data-path=./IBFT-Network/Node-2/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --bootnodes=enode://f9df552c79ab730e20ba9b43e9f89594a21c60c444248a4ae45ea4b402173493b7feed06bf9305dfc99905fc68c4909c8c8c7437640f28075751a6368a6fcfe8@127.0.0.1:30303 --p2p-port=30304 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,MINER,DEBUG,TXPOOL --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8546 
# sleep 3
# x-terminal-emulator -e ./bin/pantheon --data-path=./IBFT-Network/Node-3/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --bootnodes=enode://f9df552c79ab730e20ba9b43e9f89594a21c60c444248a4ae45ea4b402173493b7feed06bf9305dfc99905fc68c4909c8c8c7437640f28075751a6368a6fcfe8@127.0.0.1:30303 --p2p-port=30305 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,MINER,DEBUG,TXPOOL --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8547
