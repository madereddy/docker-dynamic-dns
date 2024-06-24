FROM cgr.dev/chainguard/wolfi-base:latest@sha256:7a5b796ae54f72b78b7fc33c8fffee9a363af2c6796dac7c4ef65de8d67d348d

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh