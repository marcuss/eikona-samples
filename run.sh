#!/usr/bin/env bash
docker build -t hello .
docker run -p 8888:4567 hello
