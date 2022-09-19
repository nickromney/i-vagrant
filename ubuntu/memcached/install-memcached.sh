#!/usr/bin/env bash

source "ubuntu/git/install-git.sh"

sudo apt update

sudo apt install -y build-essential
sudo apt install -y libevent-dev
sudo apt install -y automake
sudo apt install -y pkg-config

rm -fr /tmp/memcached
git clone https://github.com/memcached/memcached.git /tmp/memcached
cd /tmp/memcached
sh autogen.sh
./configure && make
sudo make install
cd -

sudo rm -fr /tmp/memcached
