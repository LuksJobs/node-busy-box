FROM node:18.12.1 as base

LABEL maintainer="Lucas Dantas <devops@unimednatal.com.br"
LABEL desc="Imagem busybox com NodeJS 18.12, utilizada para realizar testes"

#variável de ambiente utilizada pelo app
ENV APP=/opt/app

ARG IMAGE_VERSION=''
ENV IMAGE_VERSION ${IMAGE_VERSION}

RUN echo ${IMAGE_VERSION} >> /.VERSION

RUN mkdir -p $APP

ADD package.json $APP/

WORKDIR $APP

RUN npm install elastic-apm-node --save

RUN npm install 

VOLUME $APP/node_modules

CMD ["cat", "/.version"]