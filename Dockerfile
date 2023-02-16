FROM node:6.9

ENV APP=/opt/app

RUN mkdir -p $APP

ADD package.json $APP/

WORKDIR $APP

RUN npm install

VOLUME $APP/node_modules