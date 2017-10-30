#!/bin/bash
curl http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-15-current.tar.gz -o asterisk-15-current.tar.gz
tar -zxvf asterisk-15-current.tar.gz
cd asterisk-15.1.0
cd contrib/scripts/
yum install -y epel-release
./install_prereq install
cd ../..
./configure
make
make install
make samples
make basic-pbx
make config
