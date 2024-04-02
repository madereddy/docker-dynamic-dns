FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c743a7c0e4c7b58e8c35acf0cefc6153f55067ab2c8b999c5cc95a393d8609aa

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh