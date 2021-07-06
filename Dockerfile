FROM node:16-buster

WORKDIR /app
COPY . /app

RUN npm install

ENTRYPOINT tail -f /dev/null