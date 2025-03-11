FROM cgr.dev/chainguard/wolfi-base:latest@sha256:211327e3db292fe34d2f867ff45cc3a1b4b9037acca85f8a88c8522cabfa1348

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh