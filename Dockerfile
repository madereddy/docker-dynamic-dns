FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c9339087a6de501ba6989756aeb1e1c89af82ac0e53c8b1ccd1feb44ec2246d9

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh