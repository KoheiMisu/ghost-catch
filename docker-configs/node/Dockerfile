FROM node:8.9.0-alpine

RUN apk add --update openssl-dev git
RUN npm upgrade && npm install -g yarn

ENV PROJECT_ROOT /var/www
ENV PROJECT_NAME fantome-pris-client

##
## Python
##

RUN apk add --no-cache python && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache
    
##
## Python
##

WORKDIR $PROJECT_ROOT/$PROJECT_NAME
