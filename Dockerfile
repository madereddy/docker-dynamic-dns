FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3b271f8bff9356a38aa23118ffdea3c0d659f39e207feedacf01bdea4b900871

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh