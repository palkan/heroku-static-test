FROM ubuntu:trusty

RUN apt-get update && apt-get install -y build-essential curl ruby htop

ADD ./heroku-buildpack-static /buildback

RUN mkdir -p /app/build

ADD ./build /app/build

ADD ./static.json /app

WORKDIR /buildback

RUN mkdir vendor

RUN bin/compile /app ./vendor

WORKDIR /app

EXPOSE 5000

CMD ./bin/boot
