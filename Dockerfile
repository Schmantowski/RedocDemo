FROM ubuntu
USER root
WORKDIR /home/app

LABEL maintainer="Jonas Knebel" \
      name="Yaml_resolver" \
      version="0.0"

RUN sudo apt-get update -y && sudo apt-get upgrade -y
RUN sudo apt-get install -y git 
RUN sudo apt-get install -y curl gnupg
RUN sudo apt-get install -y build-essential
RUN curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN npm install
RUN node -v 
RUN npm -v 
RUN npm install -g redoc-cli 
RUN npm install -g @redocly/openapi-cli
RUN apt-get update -y && apt-get upgrade -y && apt-get autoremove -y 

