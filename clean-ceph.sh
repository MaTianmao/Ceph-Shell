#!bin/bash
umount /var/lib/ceph/osd/*
rm -rf /var/lib/ceph/osd/*
rm -rf /var/lib/ceph/bootstrap-osd/*

