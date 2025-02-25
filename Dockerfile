FROM cgr.dev/chainguard/wolfi-base:latest@sha256:95be65e511213e5adfae48f3dc55f97f5578b6facbbe2e6d53ea1b153ba6a15b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh