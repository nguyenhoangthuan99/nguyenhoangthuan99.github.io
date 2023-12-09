FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install -y python3-pip

RUN pip3 install proselint

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
