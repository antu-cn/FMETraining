FROM nikolaik/python-nodejs

# Disables user input prompts during apt-get install
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update && \
    apt-get -qq install -y calibre awscli && \
    npm install -g gitbook-cli && \
    gitbook install && \
    rm -fr /tmp/* /var/tmp/* /var/lib/apt/lists/*

