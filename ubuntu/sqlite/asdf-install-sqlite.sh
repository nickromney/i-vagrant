#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add sqlite
asdf plugin update sqlite
asdf install sqlite $1
asdf global sqlite $1

sudo apt install -y libsqlite3-dev
