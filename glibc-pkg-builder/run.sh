#!/usr/bin/env bash

IMAGE_TAG=mvkvl/alpine-pkg-builder

mkdir -p pkg
docker run --rm -it --entrypoint "sh" \
  -v "./pkg:/home/slink/packages" \
  -v "./assets/$(uname -m):/src/assets" \
  $IMAGE_TAG \
  -c "cp /src/assets/* /src && abuild checksum && abuild -r"
