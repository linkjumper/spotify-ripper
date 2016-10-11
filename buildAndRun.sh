#!/usr/bin/env bash

docker build -t morgaroth/spotify-ripper .
docker kill spotify-ripper
docker rm spotify-ripper
docker run --name spotify-ripper -v docker_config:/ripper/config -v test:/ripper/songs morgaroth/spotify-ripper:latest