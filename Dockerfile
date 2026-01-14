FROM cgr.dev/chainguard/wolfi-base:latest@sha256:e735a9b94027e0d33e0056f94cfdca6d88adfbdf1ffa96bdbed0d43dc72fd179

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh