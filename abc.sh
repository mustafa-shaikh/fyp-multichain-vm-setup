#!/bin/bash

#updating system for smooth installation
sudo apt-get update && sudo apt-get upgrade
 
#create directories
cd ~/Downloads
mkdir FYP
cd FYP
 
#installing necessary packages
sudo apt install git
sudo apt install php
sudo apt install php-curl
sudo apt install net-tools
sudo apt install nodejs
sudo apt install python3-pip
sudo apt install jq
sudo apt install maven
 
#installing multichain
wget https://www.multichain.com/download/multichain-2.1.2.tar.gz
tar -xvzf multichain-2.1.2.tar.gz
cd multichain-2.1.2
sudo mv multichaind multichain-cli multichain-util /usr/local/bin
 
#installing multichain-web demo
cd ~/Downloads/FYP
git clone https://github.com/MultiChain/multichain-web-demo.git
 
#installing multichain Java API
git clone https://github.com/SimplyUb/MultiChainJavaAPI.git
cd MultiChainJavaAPI
mvn clean install
 
#installing vscode [optional]
cd ~/Downloads/FYP
sudo snap install --classic code
 
#installing google chrome [optional]
cd ~/Downloads/FYP
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
 
