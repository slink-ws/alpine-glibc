FROM alpine AS step1
ARG TARGETARCH

RUN mkdir -p /src
WORKDIR /src

# https://wiki.alpinelinux.org/wiki/Creating_an_Alpine_package
RUN \
    apk add alpine-sdk git doas nano && \
    mkdir -p /var/cache/distfiles && \
    chmod -R a+w /var/cache/distfiles && \
    chmod -R g+w /var/cache/distfiles && \
    chmod -R a+w /src && \
    chmod -R g+w /src && \
    git config --global user.name "slink" && \
    git config --global user.name "appdev@slink.ws" && \
    git clone https://gitlab.alpinelinux.org/alpine/aports && \
    rm -rf glibc.apk glibc-bin.apk /var/cache/apk/* && \
    echo "step1: ok"

ENTRYPOINT ["sh"]

FROM step1 AS step2

RUN \
    adduser slink -D && \
    addgroup slink abuild  && \
    chgrp -R abuild /src && \
    chgrp -R abuild /var/cache/distfiles && \
    echo "step2: ok"

USER slink:abuild

RUN \
    abuild-keygen -a -n && \
    echo "step3: ok"

ENTRYPOINT ["sh"]
