FROM windows.10

LABEL maintainer="Jonas Knebel" \
      name="Yaml_resolver" \
      version="0.0"

RUN # update \
    apt-get update \
    # install curl 
    apt-get install curl \
    # get install script and pass it to execute: 
    curl -sL https://deb.nodesource.com/setup_4.x | bash \
    # and install node 
    apt-get install nodejs \
    # confirm that it was successful 
    node -v \
    # npm installs automatically 
    npm -v \
    npm install -g redoc-cli \
    npm install -g @redocly/openapi-cli \
    sudo apt-get install git

ADD start.bash /start.bash

