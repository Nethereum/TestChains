# Nethereum TestChains

Developing with Blockchains often requires running a local client (AKA: TestChain or Devchain). Testchains are optimized for development, they keep your work private and speed up transaction validation time.

This repo contains all you need to spin up a local TestChain in a few minutes, whether you need to use `Geth`, `Parity`, `Pantheon`, `Quorum` or `Ganache`. Each of these chains is already configured to use PoA (Proof of Authority) as a consensus model for faster response. They all launch using scripts providing Testchains with funded accounts and passwords. 

The preconfigured account used across every Testchain is ```0x12890d2cce102216644c59daE5baed380d84830c``` with private key ```0xb5b1870957d373ef0eeffecc6e4812c0fd08f554b37b233526acc331bf1544f7```.

The account key store file password is : ```password```

## Geth
___

Devchain version of Geth (Ethereum Go client) configured with PoA (Proof of Authority) for fast response.

### - Windows

Just launch `> > geth-clique-windows > startgeth.bat`

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the latest geth executable and replace the old one.

### - Mac

Launch `> > geth-clique-mac > startgeth.sh`

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the geth executable and replace the old one.

### - Linux

Launch `> > geth-clique-linux > startgeth.sh`

Note: use ``` chmod +x startgeth.sh ``` and ``` chmod +x geth ``` to allow geth to execute.

Latest versions of geth can be downloaded [here](https://geth.ethereum.org/downloads/), simply download the geth executable and replace the old one.

## Parity
___

Devchain version of Parity (Ethereum Rust client) configured with PoA (Proof of Authority) for fast response.

### - Windows

Launch `> > parity-poa-windows > launch.bat`

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.

### - Mac

Launch `> > parity-poa-mac > launch.sh`

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.


Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

### - Linux

Launch `> > parity-poa-linux > launch.sh`

Note: use ``` chmod +x launch.sh ``` and ``` chmod +x parity ``` to allow geth to execute.

Latest versions of Parity can be downloaded [here](https://github.com/paritytech/parity-ethereum/releases/latest), simply download the Parity executable and replace the old one.

## Pantheon
___

Ethereum client developed written in Java. Testchains is setup with Pantheon with Proof of Authority ([IBFT 2.0](https://docs.pantheon.pegasys.tech/en/stable/Consensus-Protocols/IBFT/2.0) and Clique) consensus mechanisms.
Pantheon supports enterprise features including privacy and permissioning.


### Clique PoA

### - Windows

**Setup**: in order to run Testchains/Pantheon require Java 8+ 
Launch `> > pantheon-clique-windows > startChain.bat`

Latest versions of Pantheon can be downloaded [here](https://bintray.com/consensys/pegasys-repo/pantheon).

### - Linux
**Setup**: in order to run Testchains/Pantheon require Java 8+ 
Make sure to run `> > pantheon-clique-linux > updater.sh` to run the current version of pantheon 

Launch `> > pantheon-clique-linux-mac > startChain.sh`

Latest versions of Pantheon can be downloaded [here](https://bintray.com/consensys/pegasys-repo/pantheon).

### IBFT PoA

### - Windows
**Setup**: in order to run Testchains/Pantheon require Java 8+ 
Launch `> > pantheon-IBFT-windows > startChain.bat`

Latest versions of Pantheon can be downloaded [here](https://bintray.com/consensys/pegasys-repo/pantheon).

### - Linux
**Setup**: in order to run Testchains/Pantheon require Java 8+ 
Make sure to run `> > pantheon-IBFT-linux > updater.sh` to run the current version of pantheon 

Launch `> > pantheon-IBFT-linux > startChain.sh`

Latest versions of Pantheon can be downloaded [here](https://bintray.com/consensys/pegasys-repo/pantheon).
 
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

## Quorum
___

[Quorum]{https://github.com/jpmorganchase/quorumsetup} in draft mode.

### Linux
>   quorum-linux    > ```./setup.sh``` ```./launch.sh```
