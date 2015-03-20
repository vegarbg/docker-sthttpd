#!/bin/bash

rm -rf /tmp/build /tmp/dist /tmp/*.gz
apt-get update
apt-get install -y build-essential automake curl
curl ftp://opensource.dyc.edu/pub/sthttpd/sthttpd-2.27.0.tar.gz > /tmp/sthttpd.tar.gz
mkdir -p /tmp/build /tmp/dist
cd /tmp/build
tar zxvf ../sthttpd.tar.gz
cd /tmp/build/sthttpd*
./configure
addgroup --system thttpd
make install
