#!/bin/bash

## Configuration stuff

echo "@reboot service ssh start" > /var/spool/cron/crontabs/root

# edit bash

## software_temp stuff

cd /tmp/
tar xvfz software_temp.tar
cd software_temp

# pip2
apt install -y python3 pcregrep libcre++-dev python-dev python2
python2 get-pip.py

# VOLATILITY
pip2 install --upgrade setuptools
pip2 install pycrypto
pip2 install distorm3
unzip volatility-2.6.zip
cd volatility-master
python2 setup.py install

cd /
rm -r /tmp/software_temp*

## opt cloning
cd /opt
tar xvf opt.tar
tar xvfz opt/Wordlists.tar.gz
tar xvfz opt/Tools.tar.gz
rm -r opt
rm -r opt.tar
