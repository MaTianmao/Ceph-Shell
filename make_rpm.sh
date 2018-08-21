#!/bin/bash

tar -cjf ceph-12.2.2.tar.bz2 ceph-12.2.2
cp ceph-12.2.2.tar.bz2 ~/rpmbuild/SOURCES/
tar --strip-components=1 -C ~/rpmbuild/SPECS/ --no-anchored -xvjf ~/rpmbuild/SOURCES/ceph-12.2.2.tar.bz2 "ceph.spec"
rpmbuild -ba ~/rpmbuild/SPECS/ceph.spec
mv /root/rpmbuild/RPMS/x86_64/ceph-debuginfo-12.2.2-0.el7.centos.x86_64.rpm /root/rpmbuild/RPMS
tar -cjf cephrpm.tar.bz2 /root/rpmbuild/RPMS/x86_64/*.rpm

