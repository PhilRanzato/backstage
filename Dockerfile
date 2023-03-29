FROM node:18.15.0-alpine3.17

RUN mkdir /app

WORKDIR /app

RUN apk add yarn

RUN echo backstage | npx @backstage/create-app

RUN apk add git curl

WORKDIR /app/backstage

COPY app-config.yaml .

CMD ["yarn", "dev"]
