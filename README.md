# JIRA Bitbucket and Gitlab on docker containers with local storage

Using docker-compose v3

![Screenshot](screenshot.png)

This docker images provides images for Atlassian JIRA, Bitbucket and Gitlab.
The install is clean, you hace to configure db, etc. Just read the docker-compose files ;)
On crash-recovery have a backup of /dockerdata. System will build up from scratch without losing any data.

# Installation

- clone dir
- Execute docker-compose up on each directory

# Tips and useful scripts

To do things, easier, you can use some aliases instead of docker-compose full syntax commands ;)
Just do dockerup on each dir ;)

* alias dockerup='docker-compose up --build'
* alias dockerdown='docker-compose down --remove-orphans'
* alias dockerrm='docker-compose rm -v'
* alias dockerinit='docker stop $(docker ps -a -q) ;  docker rm $(docker ps -a -q)'




