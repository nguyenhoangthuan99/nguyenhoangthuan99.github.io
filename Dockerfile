FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install python3-pip

RUN pip3 install proselint

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
