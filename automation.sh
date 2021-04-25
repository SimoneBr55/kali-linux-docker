#!/bin/bash

## Configuration stuff

# edit bash

## software_temp stuff

cd /tmp/
tar xvf software_temp.tar
cd software_temp.tar

# VOLATILITY
apt install -y python3 pcregrep libcre++-dev python-dev python2
python2 get-pip.py
pip2 install --upgrade setuptools
pip2 install pycrypto
pip2 install distorm3
unzip volatility-2.6.zip
cd volatility-master
python2 setup.py install

# pip2

## opt stuff
