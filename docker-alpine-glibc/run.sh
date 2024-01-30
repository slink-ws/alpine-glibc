#!/usr/bin/env bash

ALPINE_VERSION=3.19.1
GLIBC_VERSION=2.38
IMAGE_TAG=mvkvl/alpine:${ALPINE_VERSION}-glibc-${GLIBC_VERSION}

docker run --rm -it -t $IMAGE_TAG