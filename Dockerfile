FROM cgr.dev/chainguard/wolfi-base:latest@sha256:832e4480a41142ae250bc6f1d4494b45bd7bb7eb30f436d8b50a4b1c86cce9cf

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh