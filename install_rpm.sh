#!/bin/bash

rm -rf cephrpm
mkdir cephrpm
tar -xjf cephrpm.tar.bz2 -C ./cephrpm
cd cephrpm/root/rpmbuild/RPMS/x86_64/
echo $PWD
ps aux ｜grep yum | awk '{print $2}' | xargs kill -9
yum install -y *.rpm
