# useful-scripts
Some useful bash scripts for making life easier

## Install
Just download the repo and call `bash install.sh`. You can choose where to create the symlinks from the given paths in your environment $PATH.

## Uninstall
Uninstalling the scripts is just as easy as installing them. Type in `bash uninstall.sh`, choose the path where the symlinks were created and you're done!

# Overview
## fssh
fssh stands for "fast ssh" and lets you configure your ssh access for different servers where you added your ssh key

### Usage
- `fssh`
- a list of your ssh aliases will show up
- type in the number of the server you want to go to

### Configuration
- Config file path: /etc/fssh/servers.conf
- every line must have the following syntax: sshname=username@server
- this file will be imported by using `source` so the variables are available there

## create-vhost
create-vhost is a shortcut for creating a vhost (specifically for homebrew apache environments)

### Usage
- `create-vhost`
- You are asked for some configuration. Most of the parameters have a default value.