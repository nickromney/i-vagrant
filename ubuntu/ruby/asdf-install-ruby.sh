#!/usr/bin/env bash

sudo apt update

sudo apt install -y autoconf
sudo apt install -y bison
sudo apt install -y gcc
sudo apt install -y make
sudo apt install -y build-essential
sudo apt install -y libssl-dev
sudo apt install -y libyaml-dev
sudo apt install -y libreadline-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libncurses5-dev
sudo apt install -y libffi-dev
sudo apt install -y libgdbm6
sudo apt install -y libgdbm-dev

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add ruby
asdf plugin update ruby
asdf install ruby $1
asdf global ruby $1

shift 1

if (( $# )); then
  gem install $@
fi
