FROM cgr.dev/chainguard/wolfi-base:latest@sha256:09087ed84e6040a4f82530531171005212331f391b4e625275809346afd8d03b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh