#!/usr/bin/env bash

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add nodejs
asdf plugin update nodejs
asdf install nodejs $1
asdf global nodejs $1
