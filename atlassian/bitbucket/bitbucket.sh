#!/bin/bash

# Ejecuta Bitbucket

# @manufy 2017 - Manuel Fernández Yáñez http://redgreenrefactor.blogsite.org

docker run -v /dockerdata/bitbucket/:/var/atlassian/application-data/bitbucket --name="atman-bitbucket" -d -p 8083:7990 -p 7999:7999 atlassian/bitbucket-server
