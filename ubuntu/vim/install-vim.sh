#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

apt install -y build-essential

rm -fr /tmp/vim
git clone https://github.com/vim/vim.git /tmp/vim
make -C /tmp/vim
make install -C /tmp/vim

rm -fr /tmp/vim
