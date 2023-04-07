#!/bin/bash

docker build -t ubuntu:apache2

docker run -d -p 3000:80 ubuntu:apache2
