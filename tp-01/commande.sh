#!/bin/bash

docker build -t ubuntu:vim .
docker run -it ubuntu:vim
