FROM cgr.dev/chainguard/wolfi-base:latest@sha256:eeb70e74e2ac07d3c80a30150bf473970c8b51a57f06daef3e4d065ac52489bc

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh