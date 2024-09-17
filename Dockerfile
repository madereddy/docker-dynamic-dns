FROM cgr.dev/chainguard/wolfi-base:latest@sha256:b06d4539c7e18334791bbcd93726faf7251e56049f787af5679954c1e6ac4a8f

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh