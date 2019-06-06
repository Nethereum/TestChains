# TestChains

Blockchain developing often requires to run a local Blockchain client (AKA: TestChain). This is to make sure your work remains private and that any sent transaction gets a fast response.

In order to speed up the process, this repo contains all you need to spin up a local TestChain in a few minutes. Each of these chains uses PoA (Proof of Authority) as a consensus model for faster response. They all launch using provided scripts, automatically provided with accounts and passwords. 

The preconfigured account is ```0x12890d2cce102216644c59daE5baed380d84830c``` with private key ```0xb5b1870957d373ef0eeffecc6e4812c0fd08f554b37b233526acc331bf1544f7```.

The account key store file password is : ```password```

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

>       > ./startgeth.sh

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

## Pantheon
___
Ethereum client developed written in Java. Pantheon implements Proof of Work (Ethash) and Proof of Authority (IBFT 2.0 and Clique) consensus mechanisms.
Pantheon supports enterprise features including privacy and permissioning.

### - Windows

>       > parity-poa-windows > startChain.bat

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.

### - Mac/Linux

>       > pantheon-IBFT-linux-mac > startChain.sh

Latest versions of Parity can be downloaded [here](https://bintray.com/consensys/pegasys-repo/pantheon).

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
`npm install ganache-cli@latest`
or
`yarn add ganache-cli@latest`
>   ganache-windows    > launch.bat

### Mac
`npm install ganache-cli@latest`
or
`yarn add ganache-cli@latest`
>  ganache-mac    > ./launch.sh

### Linux
`npm install ganache-cli@latest`
or
`yarn add ganache-cli@latest`
>   ganache-linux    > ./launch.sh


## Pantheon

[Pantheon](https://docs.pantheon.pegasys.tech/en/stable) is an open-source Ethereum client, it supports enterprise features including privacy and permissioning.

### - Windows

>       > pantheon-windows > startChain.bat

### - Linux

>       > pantheon-linux > startChain.sh

Note: use ``` chmod +x startChain.sh ``` and ``` chmod +x pantheon``` to allow geth to execute.

## Quorum
___

Quorum setup in draft mode.

### Linux

>   quorum-linux    > ```./setup.sh``` ```./launch.sh```
