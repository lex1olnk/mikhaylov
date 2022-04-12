FROM python:3.7.2-alpine3.8
LABEL maintainer="jeffmshale@gmail.com"

RUN apt-get install git
RUN git clone https://github.com/python-telegram-bot/python-telegram-bot --recursive
RUN cd python-telegram-bot
RUN sudo python setup.py install
RUN cd ..

RUN apk update && apk upgrade && apk add bash
COPY . ./python-telegram-bot


