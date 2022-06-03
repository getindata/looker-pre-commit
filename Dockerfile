FROM ubuntu:20.04

WORKDIR /opt/lams

RUN apt-get update && apt-get install curl wget -y && \
    curl -s https://deb.nodesource.com/setup_18.x | bash && \
    apt-get install nodejs && \
    npm install -g @looker/look-at-me-sideways@2

CMD ["/bin/sh"]