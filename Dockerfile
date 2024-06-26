FROM cgr.dev/chainguard/wolfi-base:latest@sha256:34100efe6c082579d51b6d9b4ee53576e4497b7a047502544453d79676a356c3

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh