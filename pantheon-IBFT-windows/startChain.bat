RD /S /Q % IBFT-Network\Node-1\data\database 
RD /S /Q % IBFT-Network\Node-2\data\database 
RD /S /Q % IBFT-Network\Node-3\data\database 

start cmd.exe /K pantheon --data-path=./IBFT-Network/Node-1/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-config-file=./IBFT-Network/Node-1/data/permissions_config.toml --permissions-nodes-enabled --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,WEB3,PERM,MINER,DEBUG --host-whitelist=* --rpc-http-cors-origins="all"

start cmd.exe /K pantheon --data-path=./IBFT-Network/Node-2/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-config-file=./IBFT-Network/Node-2/data/permissions_config.toml --permissions-nodes-enabled  --bootnodes=enode://f9df552c79ab730e20ba9b43e9f89594a21c60c444248a4ae45ea4b402173493b7feed06bf9305dfc99905fc68c4909c8c8c7437640f28075751a6368a6fcfe8@127.0.0.1:30303 --p2p-port=30304 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,WEB3,PERM,MINER,DEBUG --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8546

start cmd.exe /K pantheon --data-path=./IBFT-Network/Node-3/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-config-file=./IBFT-Network/Node-3/data/permissions_config.toml --permissions-nodes-enabled  --bootnodes=enode://f9df552c79ab730e20ba9b43e9f89594a21c60c444248a4ae45ea4b402173493b7feed06bf9305dfc99905fc68c4909c8c8c7437640f28075751a6368a6fcfe8@127.0.0.1:30303 --p2p-port=30305 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,WEB3,PERM,MINER,DEBUG --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8547
