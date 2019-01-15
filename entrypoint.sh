#!/bin/bash

/etc/init.d/docker start

docker version

docker-compose $@ up
