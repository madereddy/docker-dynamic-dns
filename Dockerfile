FROM cgr.dev/chainguard/wolfi-base:latest@sha256:7080ae6c3b6a1d992aa5c304d01e1c36c674218c653ac51264995ab8272dbe15

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh