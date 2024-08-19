FROM cgr.dev/chainguard/wolfi-base:latest@sha256:72c8bfed3266b2780243b144dc5151150015baf5a739edbbde53d154574f1607

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh