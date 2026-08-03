FROM ubuntu:latest

RUN apt.get update && apt.get install -y \
    python3.14.6 \
    python3-pip \
    git \

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypont.sh

ENTRYPOINT ["/entrypoint.sh"]