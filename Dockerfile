FROM cgr.dev/chainguard/wolfi-base:latest@sha256:1c3731953120424013499309796bd0084113bad7216dd00820953c2f0f7f7e0b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh