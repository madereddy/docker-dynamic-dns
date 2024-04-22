FROM cgr.dev/chainguard/wolfi-base:latest@sha256:36e4b16af5c6f70e7eb71349f9c0341dd96a364ff04a4e0f352cb2a8389bf6f3

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh