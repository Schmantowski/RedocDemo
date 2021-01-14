FROM timbru31/node-alpine-git
USER root

LABEL maintainer="Jonas Knebel" \
      name="Yaml_resolver" \
      version="0.0"

RUN npm install
RUN node -v 
RUN npm -v 
RUN npm install -g redoc-cli 
RUN npm install -g @redocly/openapi-cli

