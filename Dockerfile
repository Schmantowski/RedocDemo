FROM ubuntu

LABEL maintainer="Jonas Knebel" \
      name="Yaml_resolver" \
      version="0.0"

RUN apt-get -y update 
RUN apt-get -y upgrade 
RUN apt-get -y install git 
RUN apt-get -y install curl 
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash 
RUN apt-get install nodejs 
RUN node -v 
RUN npm -v 
RUN npm install -g redoc-cli 
RUN npm install -g @redocly/openapi-cli 

