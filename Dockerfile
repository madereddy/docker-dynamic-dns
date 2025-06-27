FROM cgr.dev/chainguard/wolfi-base:latest@sha256:73c232274a987eac99caee0b412cc44a992874ab4a70e48e8cc8d62babbbda27

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh