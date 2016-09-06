# i-vagrant
i-vagrant helps set up a development environment easily. i-vagrant can be used with [Vagrant](https://github.com/mitchellh/vagrant).

Try to fork this repository and build i-vagrant for own needs.

## Getting Started Guide
Download i-vagrant
```bash
$ git clone https://github.com/bogdanvlviv/i-vagrant.git
$ cd i-vagrant/
```

### Setting up current local machine
To set up a development environment on local machine, need configure `i-vagrant` file.
After configure `i-vagrant` file need to run
```bash
$ source i-vagrant
```

### Using with [Vagrant](https://github.com/mitchellh/vagrant)
See more about Vagrant [here](https://github.com/mitchellh/vagrant/blob/master/README.md).

Need configure `Vagrantfile` file, then to run
```bash
$ vagrant up
```

### How to configure `i-vagrant` and `Vagrantfile` files

- [ubuntu](#ubuntu)
  - [bashrc](#bashrc)
  - [curl](#curl)
  - [fzf](#fzf)
  - [git](#git)
  - [graphviz](#graphviz)
  - [imagemagick](#imagemagick)
  - [mc](#mc)
  - [mongodb](#mongodb)
  - [mysql](#mysql)
  - [nodejs](#nodejs)
  - [phantomjs](#phantomjs)
  - [postgresql](#postgresql)
  - [redis](#redis)
  - [ruby](#ruby)
  - [sqlite3](#sqlite3)
  - [the_silver_searcher](#the_silver_searcher)
  - [tmux](#tmux)
  - [vagrant](#vagrant)
  - [vim](#vim)

#### ubuntu

##### bashrc
To configure `i-vagrant` file for setting `LC_ALL` environment variable need to set the row
```bash
bash "ubuntu/bashrc/set-lc_all-variable.sh"
```
To configure `Vagrantfile` file for setting `LC_ALL` environment variable need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/bashrc/set-lc_all-variable.sh', privileged: false
```

##### curl
To configure `i-vagrant` file for installing `curl` need to set the row
```bash
sudo bash "ubuntu/curl/install-curl.sh"
```
To configure `Vagrantfile` file for installing `curl` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/curl/install-curl.sh', privileged: true
```

##### fzf
To configure `i-vagrant` file for installing `fzf` need to set the row
```bash
bash "ubuntu/fzf/install-fzf.sh"
```
To configure `Vagrantfile` file for installing `fzf` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/fzf/install-fzf.sh', privileged: false
```

##### git
To configure `i-vagrant` file for installing `git` need to set the row
```bash
sudo bash "ubuntu/git/install-git.sh"
```
To configure `Vagrantfile` file for installing `git` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/git/install-git.sh', privileged: true
```

##### graphviz
To configure `i-vagrant` file for installing `graphviz` need to set the row
```bash
sudo bash "ubuntu/graphviz/install-graphviz.sh"
```
To configure `Vagrantfile` file for installing `graphviz` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/graphviz/install-graphviz.sh', privileged: true
```

##### imagemagick
To configure `i-vagrant` file for installing `imagemagick` need to set the row
```bash
sudo bash "ubuntu/imagemagick/install-imagemagick.sh"
```
To configure `Vagrantfile` file for installing `imagemagick` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/imagemagick/install-imagemagick.sh', privileged: true
```

##### mc
To configure `i-vagrant` file for installing `mc` need to set the row
```bash
sudo bash "ubuntu/mc/install-mc.sh"
```
To configure `Vagrantfile` file for installing `mc` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/mc/install-mc.sh', privileged: true
```

##### mongodb
To configure `i-vagrant` file for installing `mongodb` need to set the row
```bash
sudo bash "ubuntu/mongodb/install-mongodb.sh" MONGODB_VERSION UBUNTU_RELEASE_CODENAME
```
To configure `Vagrantfile` file for installing `mongodb` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/mongodb/install-mongodb.sh', args: 'MONGODB_VERSION UBUNTU_RELEASE_CODENAME', privileged: true
```

###### Required arguments:
`MONGODB_VERSION` - example values: `3.0` or `3.2`, ...

`UBUNTU_RELEASE_CODENAME` - example values: `trusty`, `xenial`, ...

##### mysql
To configure `i-vagrant` file for installing `mysql` need to set the row
```bash
sudo bash "ubuntu/mysql/install-mysql.sh" MYSQL_USER_ROOT_PASSWORD ADDITIONAL_LIBRARIES
```
To configure `Vagrantfile` file for installing `mysql` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/mysql/install-mysql.sh', args: 'MYSQL_USER_ROOT_PASSWORD ADDITIONAL_LIBRARIES', privileged: true
```

###### Required arguments:
`MYSQL_USER_ROOT_PASSWORD` - example values: `password` or `password1`, ...

During installing MySQL create `mysql user` named `root`, need to set password for him.

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libmysqlclient-dev` or `libmysqlclient-dev mysql-testsuite`, ...

##### nodejs
To configure `i-vagrant` file for installing `nvm` need to set the row
```bash
bash "ubuntu/nodejs/install-nvm.sh" NVM_VERSION
```
To configure `Vagrantfile` file for installing `nvm` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/nodejs/install-nvm.sh', args: 'NVM_VERSION', privileged: false
```
To configure `i-vagrant` file for installing `nodejs` after installation `nvm` need to set the row
```bash
bash "ubuntu/nodejs/install-nodejs.sh" NODEJS_VERSION
```
To configure `Vagrantfile` file for installing `nodejs` after installation `nvm` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/nodejs/install-nodejs.sh', args: 'NODEJS_VERSION', privileged: false
```

###### Required arguments:
`NVM_VERSION` - example values: `0.31.6` or `0.31.7`, ...

`NODEJS_VERSION` - example values: `4.5.0` or `6.5.0`, ...

##### phantomjs
To configure `i-vagrant` file for installing `phantomjs` need to set the row
```bash
sudo bash "ubuntu/phantomjs/install-phantomjs.sh"
```
To configure `Vagrantfile` file for installing `phantomjs` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/phantomjs/install-phantomjs.sh', privileged: true
```

##### postgresql
To configure `i-vagrant` file for installing `postgresql` need to set the row
```bash
sudo bash "ubuntu/postgresql/install-postgresql.sh" POSTGRESQL_VERSION UBUNTU_RELEASE_CODENAME ADDITIONAL_LIBRARIES
```
To configure `Vagrantfile` file for installing `postgresql` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/postgresql/install-postgresql.sh', args: 'POSTGRESQL_VERSION UBUNTU_RELEASE_CODENAME ADDITIONAL_LIBRARIES', privileged: true
```
To configure `i-vagrant` file for create `postgresql user` after installation `postgresql` need to set the row
```bash
sudo bash "ubuntu/postgresql/create-user.sh" POSTGRESQL_USER_NAME POSTGRESQL_USER_PASSWORD
```
To configure `Vagrantfile` file for create `postgresql user` after installation `postgresql` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/postgresql/create-user.sh', args: 'POSTGRESQL_USER_NAME POSTGRESQL_USER_PASSWORD', privileged: true
```

###### Required arguments:
`POSTGRESQL_USER_NAME` - example values: `root` or `root1`, ...

`POSTGRESQL_USER_PASSWORD` - example values: `password` or `password1`, ...

`POSTGRESQL_VERSION` - example values: `9.4` or `9.5`, ...

`UBUNTU_RELEASE_CODENAME` - example values: `trusty`, `xenial`, ...

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libpq-dev` or `libpq-dev postgresql-contrib`, ...

##### redis
To configure `i-vagrant` file for installing `redis` need to set the row
```bash
sudo bash "ubuntu/redis/install-redis.sh"
```
To configure `Vagrantfile` file for installing `redis` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/redis/install-redis.sh', privileged: true
```

##### ruby
To configure `i-vagrant` file for installing `rvm` need to set the row
```bash
bash "ubuntu/ruby/install-rvm.sh" RVM_VERSION
```
To configure `Vagrantfile` file for installing `rvm` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/ruby/install-rvm.sh', args: 'RVM_VERSION', privileged: false
```
To configure `i-vagrant` file for installing `ruby` after installation `rvm` need to set the row
```bash
bash "ubuntu/ruby/install-ruby.sh" RUBY_VERSION ADDITIONAL_GEMS
```
To configure `Vagrantfile` file for installing `ruby` after installation `rvm` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'RUBY_VERSION ADDITIONAL_GEMS', privileged: false
```
See more about installing `rvm` with sudo privileges [here](https://rvm.io/rvm/install).

###### Required arguments:
`RVM_VERSION` - example values: `stable` or `head`, ...

`RUBY_VERSION` - example values: `1.9.3` or `2.3.1`, ...

###### Optional arguments:
`ADDITIONAL_GEMS` - example values: `bundler` or `bundler rails`, ...

##### sqlite3
To configure `i-vagrant` file for installing `sqlite3` need to set the row
```bash
sudo bash "ubuntu/sqlite3/install-sqlite3.sh" ADDITIONAL_LIBRARIES
```
To configure `Vagrantfile` file for installing `sqlite3` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/sqlite3/install-sqlite3.sh', args: 'ADDITIONAL_LIBRARIES', privileged: true
```

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libsqlite3-dev` or `libsqlite3-dev libsqlite3-tcl`, ...

##### the_silver_searcher
To configure `i-vagrant` file for installing `the_silver_searcher` need to set the row
```bash
sudo bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"
```
To configure `Vagrantfile` file for installing `the_silver_searcher` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/the_silver_searcher/install-the_silver_searcher.sh', privileged: true
```

##### tmux
To configure `i-vagrant` file for installing `tmux` need to set the row
```bash
sudo bash "ubuntu/tmux/install-tmux.sh"
```
To configure `Vagrantfile` file for installing `tmux` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/tmux/install-tmux.sh', privileged: true
```

##### vagrant
To configure `i-vagrant` file for installing `vagrant` need to set the row
```bash
sudo bash "ubuntu/vagrant/install-vagrant.sh" VAGRANT_VERSION
```
To configure `Vagrantfile` file for installing `vagrant` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/vagrant/install-vagrant.sh', args: 'VAGRANT_VERSION', privileged: true
```

###### Required arguments:
`VAGRANT_VERSION` - example values: `1.8.4` or `1.8.5`, ...

##### vim
To configure `i-vagrant` file for installing `vim` need to set the row
```bash
sudo bash "ubuntu/vim/install-vim.sh"
```
To configure `Vagrantfile` file for installing `vim` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/vim/install-vim.sh', privileged: true
```
To configure `i-vagrant` file for installing `dotvim` need to set the row
```bash
bash "ubuntu/vim/install-dotvim.sh"
```
To configure `Vagrantfile` file for installing `dotvim` need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/vim/install-dotvim.sh', privileged: false
```
To configure `i-vagrant` file for setting `vim` as default editor after installation need to set the row
```bash
bash "ubuntu/vim/set-vim-as-default-editor.sh"
```
To configure `Vagrantfile` file for setting `vim` as default editor after installation need to set the row
```ruby
config.vm.provision :shell, path: 'ubuntu/vim/set-vim-as-default-editor.sh', privileged: false
```
