FROM cgr.dev/chainguard/wolfi-base:latest@sha256:5e9c9e30b1a3ba73b10574792b719067a4bd30c25eea505e447ed49ff3bcde42

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh