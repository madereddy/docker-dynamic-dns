FROM cgr.dev/chainguard/wolfi-base:latest@sha256:1ec3327af43d7af231ffe475aff88d49dbb5e09af9f28610e6afbd2cb096e751

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh