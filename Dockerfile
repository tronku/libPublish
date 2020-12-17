FROM alpine:3.12.1

COPY entrypoint.sh /entrypoint.sh
COPY prod_version_bump.sh /prod_version_bump.sh
COPY merge.sh /merge.sh
COPY createpr.sh /createpr.sh
COPY get-changelog.sh /get-changelog.sh
COPY get-app-version.sh /get-app-version.sh

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --no-cache \
    hub \
    git \
    gawk
    
ENTRYPOINT ["/entrypoint.sh"]