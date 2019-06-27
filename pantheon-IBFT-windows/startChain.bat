DEL IBFT-Network\Node-1\data\permissions_config.toml
DEL IBFT-Network\Node-2\data\permissions_config.toml
DEL IBFT-Network\Node-3\data\permissions_config.toml

COPY .\IBFT-Network\permissions_config.toml .\IBFT-Network\Node-1\data\
COPY .\IBFT-Network\permissions_config.toml .\IBFT-Network\Node-2\data\
COPY .\IBFT-Network\permissions_config.toml .\IBFT-Network\Node-3\data\

RD /S /Q % IBFT-Network\Node-1\data\database 
RD /S /Q % IBFT-Network\Node-2\data\database 
RD /S /Q % IBFT-Network\Node-3\data\database 

start cmd.exe /K .\bin\pantheon --data-path=.\IBFT-Network\Node-1\data --genesis-file=.\IBFT-Network\ibftGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,WEB3,PERM,MINER,DEBUG,EEA --host-whitelist="*" --rpc-http-cors-origins="all"
TIMEOUT 30
start cmd.exe /K .\bin\pantheon --data-path=./IBFT-Network/Node-2/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --bootnodes=enode://f9df552c79ab730e20ba9b43e9f89594a21c60c444248a4ae45ea4b402173493b7feed06bf9305dfc99905fc68c4909c8c8c7437640f28075751a6368a6fcfe8@127.0.0.1:30303 --p2p-port=30304 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,WEB3,PERM,MINER,DEBUG,EEA --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8546
TIMEOUT 30
start cmd.exe /K .\bin\pantheon --data-path=./IBFT-Network/Node-3/data --genesis-file=./IBFT-Network/ibftGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --bootnodes=enode://f9df552c79ab730e20ba9b43e9f89594a21c60c444248a4ae45ea4b402173493b7feed06bf9305dfc99905fc68c4909c8c8c7437640f28075751a6368a6fcfe8@127.0.0.1:30303 --p2p-port=30305 --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,ADMIN,WEB3,PERM,MINER,DEBUG,EEA --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8547