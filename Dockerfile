FROM node:6.9

LABEL maintainer="Lucas Dantas <devops@unimednatal.com.br"

ENV APP=/opt/app


ARG IMAGE_VERSION=''
ENV IMAGE_VERSION ${IMAGE_VERSION}

RUN echo ${IMAGE_VERSION} >> /.version

RUN mkdir -p $APP

ADD package.json $APP/

WORKDIR $APP

RUN npm install

VOLUME $APP/node_modules

CMD ["cat", "/.version"]