FROM ubuntu:22.04

ARG LAMS_VERSION=2.1.2
ARG LKMLSTYLE_VERSION=0.0.8

RUN apt-get update && apt-get install curl wget -y && \
    curl -s https://deb.nodesource.com/setup_18.x | bash && \
    apt-get install nodejs -y && \
    npm install -g @looker/look-at-me-sideways@${LAMS_VERSION}

RUN apt-get install software-properties-common -y && \
    add-apt-repository ppa:deadsnakes/ppa -y && \
    apt-get update && \
    apt-get install python3.10 python3-pip -y && \
    pip install -U pip lkmlstyle==${LKMLSTYLE_VERSION}

CMD ["/bin/sh"]