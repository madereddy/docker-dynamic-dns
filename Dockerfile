FROM cgr.dev/chainguard/wolfi-base:latest@sha256:449cb4113f5aa30a43a0041023f84ab44b66576bb4c0833290830721caf5e621

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh