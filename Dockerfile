FROM cgr.dev/chainguard/wolfi-base:latest@sha256:6bc98699de679ce5e9d1d53b9d06b99acde93584bf539690d61ec538916b1e74

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh