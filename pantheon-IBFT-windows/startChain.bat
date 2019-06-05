RD \S \Q %.\IBFT-Network\Node-1\data\database 
RD \S \Q %.\IBFT-Network\Node-2\data\database 
RD \S \Q %.\IBFT-Network\Node-3\data\database 
start cmd.exe /K pantheon --data-path=./IBFT-Network/Node-1/data --genesis-file=./IBFT-Network/ibftGenesis.json --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-whitelist=* --rpc-http-cors-origins="all"
start cmd.exe /K pantheon --data-path=./IBFT-Network/Node-2/data --genesis-file=./IBFT-Network/ibftGenesis.json --bootnodes=enode://663f8fb392c92a56851d0ff038e7d17db01baba379c2fb2d11f3eb80a47ea127372b1f82075011276a815a2eb4fd604f6b6b67d002db9a757471ad43c84284ed@127.0.0.1:30303 --p2p-port=30304 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8546 
start cmd.exe /K pantheon --data-path=./IBFT-Network/Node-3/data --genesis-file=./IBFT-Network/ibftGenesis.json --bootnodes=enode://663f8fb392c92a56851d0ff038e7d17db01baba379c2fb2d11f3eb80a47ea127372b1f82075011276a815a2eb4fd604f6b6b67d002db9a757471ad43c84284ed@127.0.0.1:30303 --p2p-port=30305 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8547
