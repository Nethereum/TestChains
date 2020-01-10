# Nethereum TestChains

Developing with Blockchains often requires running a local client (AKA: TestChain or Devchain). Testchains are optimized for development, they keep your work private and speed up transaction validation time.

In order to speed up the process, this repo contains all you need to spin up a local TestChain in a few minutes. Each of these chains use PoA (Proof of Authority) as a consensus model for faster response. They all launch using provided scripts, automatically provided with  funded accounts and passwords. 

The preconfigured account used across every Testchain is ```0x12890d2cce102216644c59daE5baed380d84830c``` with private key ```0xb5b1870957d373ef0eeffecc6e4812c0fd08f554b37b233526acc331bf1544f7```.

The account key store file password is : ```password```

## Geth
___

Devchain version of Geth (Ethereum Go client) configured with PoA (Proof of Authority) for fast response.

### Geth for Windows

Just launch `> > geth-clique-windows > startgeth.bat`

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the latest geth executable and replace the old one.

### Geth for Mac

Launch `> > geth-clique-mac > startgeth.sh`

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the geth executable and replace the old one.

### Geth for Linux

Launch `> > geth-clique-linux > startgeth.sh`

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the geth executable and replace the old one.

## Parity
___

Devchain version of Parity (Ethereum Rust client) configured with PoA (Proof of Authority) for fast response.

### Parity for Windows

Launch `> > parity-poa-windows > launch.bat`

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.

### Parity for Mac

Launch `> > parity-poa-mac > launch.sh`

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.


Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

### Parity for Linux

Launch `> > parity-poa-linux > launch.sh`

Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.

## Hyperledger-Besu
___

Ethereum client developed written in Java. Testchains is setup with Hyperledger-Besu with Proof of Authority (IBFT 2.0 and Clique) consensus mechanisms.
Hyperledger-Besu supports enterprise features including privacy and permissioning.

### Hyperledger-Besu for Windows

You will first need to install [Hyperledger-Besu](https://docs.pantheon.pegasys.tech/en/stable/Installation/Install-Binaries/#windows-with-chocolatey)

Latest versions of Hyperledger-Besu can be downloaded [here](https://bintray.com/consensys/pegasys-repo/pantheon).

### Hyperledger-Besu Clique for Windows
> > hyperledger-besu-clique-windows > startChain.bat


### Hyperledger-Besu IBFT PoA for Windows

> > hyperledger-besu-IBFT-windows > startChain.bat


### Hyperledger-Besu for Linux

!!! info
    Hyperledger-Besu requires Java 8+ to compile
    Make sure to run `> > hyperledger-besu-clique-linux > updater.sh` to run the current version of hyperledger-besu 
    
Latest versions of Hyperledger-Besu can be downloaded [here](https://bintray.com/consensys/pegasys-repo/pantheon).

### Hyperledger-Besu Clique for Linux

> > hyperledger-besu-clique-linux-mac > startChain.sh

### Hyperledger-Besu IBFT for Linux

> > hyperledger-besu-IBFT-linux > startChain.sh

## Ganache
___

parity-poa-windows

CLI version of Truffle's devchain.

### Ganache for Windows
`npm install ganache-cli@latest`
or
`yarn add ganache-cli@latest`
>   ganache-windows    > launch.bat

### Ganache for Mac
`npm install ganache-cli@latest`
or
`yarn add ganache-cli@latest`
>  ganache-mac    > ./launch.sh

### Ganache for Linux
`npm install ganache-cli@latest`
or
`yarn add ganache-cli@latest`
>   ganache-linux    > ./launch.sh
