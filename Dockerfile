FROM ubuntu
USER root
WORKDIR /home/app

LABEL maintainer="Jonas Knebel" \
      name="Yaml_resolver" \
      version="0.0"


RUN apt-get -y install git 
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get -y install nodejs
RUN npm install
RUN apt-get install nodejs 
RUN node -v 
RUN npm -v 
RUN npm install -g redoc-cli 
RUN npm install -g @redocly/openapi-cli
RUN apt-get update -y && apt-get upgrade -y && apt-get autoremove -y 

