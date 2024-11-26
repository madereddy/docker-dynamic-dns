FROM cgr.dev/chainguard/wolfi-base:latest@sha256:8dd9ceace8b1574e550374e9c07c2baafa60cc96223c1314fac61bd2edb48c70

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh