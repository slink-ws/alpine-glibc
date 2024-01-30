#!/usr/bin/env bash

IMAGE_TAG=mvkvl/alpine-pkg-builder
docker build --progress plain -t $IMAGE_TAG .
