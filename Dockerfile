FROM timbru31/node-alpine-git
USER root
WORKDIR /home/app

LABEL maintainer="Jonas Knebel" \
      name="Yaml_resolver" \
      version="0.0"


RUN apt-get install -y curl gnupg
RUN apt-get install -y build-essential
RUN sudo apt-get install nodejs -yq
RUN npm install
RUN node -v 
RUN npm -v 
RUN npm install -g redoc-cli 
RUN npm install -g @redocly/openapi-cli

