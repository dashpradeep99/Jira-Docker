#!/bin/bash

# @manufy - Manuel Fernández Yáñez

echo entrypoint.sh Setting directories permissions

cd /

chown -R jira:jira /var/atlassian/jira-app
chown -R jira:jira /var/atlassian/jira-home


if [ "$1" != "install" ]; then
  echo entrypoint.sh Entering install mode
  export JAVA_OPTS=-Djava.net.preferIPv4Stack=true
  cd /var/atlassian/jira-app/bin
  ./start-jira.sh

  trap "/var/atlassian/jira-app/bin/stop-jira.sh; echo \"echo entrypoint.sh Install correctly stopped.\"; exit 0" SIGINT SIGTERM
  while :
  do
          sleep 1
  done
else
  echo "entrypoint.sh Installation done."
fi
