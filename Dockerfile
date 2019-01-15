#
# Dockerfile for docker-in-docker
#

FROM ubuntu
LABEL maintainer="Ricky Li <cnrickylee@gmail.com>"

RUN set -ex \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y docker docker-compose \
        && apt-get autoremove \
        && apt-get clean

USER root

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "sh", "/entrypoint.sh" ]
