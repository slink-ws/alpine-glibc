
ARG ALPINE_VERSION
ARG GLIBC_VERSION

FROM alpine:${ALPINE_VERSION}
ARG GLIBC_VERSION
ARG TARGETARCH

RUN \
    wget "https://github.com/slink-ws/alpine-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}-r1-${TARGETARCH}.apk"  && \
    mv glibc-${GLIBC_VERSION}-r1-*.apk glibc-${GLIBC_VERSION}.apk   && \
    apk add --allow-untrusted glibc-${GLIBC_VERSION}.apk            && \
    rm glibc-${GLIBC_VERSION}.apk                                   && \
    rm -rf glibc.apk glibc-bin.apk /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
