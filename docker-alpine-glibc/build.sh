#!/usr/bin/env bash

ALPINE_VERSION=3.19.1
GLIBC_VERSION=2.38

IMAGE_TAG=mvkvl/alpine:${ALPINE_VERSION}-glibc-${GLIBC_VERSION}

docker buildx build --push                        \
  --platform linux/arm64,linux/amd64              \
  --build-arg "ALPINE_VERSION=${ALPINE_VERSION}"  \
  --build-arg "GLIBC_VERSION=${GLIBC_VERSION}"    \
  --progress plain -t $IMAGE_TAG .
