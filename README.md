# TestChains

Blockchain developing often requires to run a local Blockchain client (AKA: TestChain). This is to make sure your work remains private and that any sent transaction gets a fast response.

In order to speed up the process, this repo contains all you need to spin up a local TestChain in a few minutes. Each of these chains uses PoA (Proof of Authority) as a consensus model for faster response. They all launch using provided scripts, automatically provided with accounts and passwords (accounts details can be found [here](https://github.com/Nethereum/TestChains/blob/master/accountInfo.txt)).


## Geth
___
Devchain version of Geth (Ethereum Go client) configured with PoA (Proof of Authority) for fast reponse.

### - Windows

>       > geth-clique-windows > startgeth.bat

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the geth executable and replace the old one.

### - Mac

>       > geth-clique-mac > startgeth.sh

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the geth executable and replace the old one.
### - Linux

>       > geth-clique-linux > startgeth.sh

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.


Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the geth executable and replace the old one.
## Parity
___
Devchain version of Parity (Ethereum Rust client) configured with PoA (Proof of Authority) for fast reponse.

### - Windows

>       > parity-poa-windows > launch.bat

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.

### - Mac

>       > parity-poa-mac > launch.sh

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.


Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

### - Linux

>       > parity-poa-linux > launch.sh

Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.

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
