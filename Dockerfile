FROM cgr.dev/chainguard/wolfi-base:latest@sha256:aaf69a3f822e069db4be5047e9a0c5d25dd78396d9e0ea5e718b8e542978981e

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh