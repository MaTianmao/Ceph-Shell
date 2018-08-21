#!/bin/bash

yum install -y ntp
systemctl status ntpd
systemctl start ntpd
systemctl status ntpd
