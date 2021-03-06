FROM inshopgroup/docker-inshop-crm-client-nginx-prod:latest

# npm, yarn, webpack
RUN apt-get update
RUN apt-get install curl wget gnupg -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install nodejs git zip unzip -y
RUN npm config set strict-ssl false
RUN npm install -g yarn

#clean
RUN  apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
