# useful-scripts
Some useful bash scripts for that make life easier


## fssh
fssh stands for "fast ssh" and lets you configure your ssh access for different servers where you added your ssh key

### Usage
- call it with `bash fssh` or do 
- `cp fssh /usr/local/bin/fssh` to have it in your path and just use `fssh`
- a list of your ssh alias will show up
- type in the number of the server you want to go to

### Configuration
- Config file path: /etc/fssh/servers.conf
- every line must have the following syntax: sshname=username@server
- this file will be imported by using `source` so the variables are available there

## create-vhost
create-vhost is a shortcut for creating a vhost (specifically for homebrew apache environments)

### Usage
- `bash create-vhost` or
- `cp create-vhost /usr/local/bin/create-vhost` and then create-vhost for future usage
- you are asked for the domain and the document root
- the vhost file is currently hard coded with /usr/local/etc/httpd/extra/httpd-vhosts.conf
- before you can add the vhost you are asked again if you want to add it and can also edit it afterwards
- customization of the vhost is currently not available but will be added in the near future 
