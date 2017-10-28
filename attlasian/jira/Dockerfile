FROM java:8

MAINTAINER @manufy - Manuel Fernández Yáñez

COPY ./installjira /installjira

RUN cd / && wget https://downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-7.1.7-jira-7.1.7-x64.bin \
&& sha256sum -c check.gpr \
&& chmod a+x atlassian-jira-software-7.1.7-jira-7.1.7-x64.bin \
&& cd / && ./atlassian-jira-software-7.1.7-jira-7.1.7-x64.bin < ./installjira \
&& rm /atlassian-jira-software-7.1.7-jira-7.1.7-x64.bin \
&& mkdir /home/jira-app-backup/ && cp -r /var/atlassian/jira-app/* /home/jira-app-backup/ \
&& mkdir /home/jira-home-backup/ && cp -r /var/atlassian/jira-home/* /home/jira-home-backup/

VOLUME /var/atlassian/jira-app /var/atlassian/jira-home

EXPOSE 8080

COPY ./entrypoint.sh /entrypoint.sh


ENTRYPOINT [ "/entrypoint.sh" ]
