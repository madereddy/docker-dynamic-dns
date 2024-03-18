FROM cgr.dev/chainguard/wolfi-base:latest@sha256:8b846d00ae9ef579801f7a44c19511187d9a9527ddeae2a6faedc6e9e035abec

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh