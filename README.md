# TestChains
Pre configured test chains for simple integration testing

## Geth
___
Devchain version of Geth (Ethereum Go client) configured with PoA (Proof of Authority) for fast reponse.

### - Windows

>       > geth-clique-windows > startgeth.bat

### - Mac

>       > geth-clique-mac > startgeth.sh

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.

### - Linux

>       > geth-clique-linux > startgeth.sh

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.

## Parity
___
Devchain version of Parity (Ethereum Rust client) configured with PoA (Proof of Authority) for fast reponse.

### - Windows

>       > parity-poa-windows > launch.bat

### - Mac

>       > parity-poa-mac > launch.sh

Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

### - Linux

>       > parity-poa-linux > launch.sh

Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

## Ganache
___

parity-poa-windows

CLI version of Truffle's devchain.

### Windows
npm install -g ganache-cli
>   ganache-windows    > launch.bat

### Mac
npm install -g ganache-cli
>  ganache-mac    > ./launch.sh

### Linux
npm install -g ganache-cli
>   ganache-linux    > ./launch.sh

## Quorum
___

Quorum setup in draft mode.

### Linux

>   quorum-linux    > ```./setup.sh``` ```./launch.sh```