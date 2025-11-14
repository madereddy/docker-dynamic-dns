FROM cgr.dev/chainguard/wolfi-base:latest@sha256:5c393319e5fd3eeb275f2eda85377633d344328b6f81e8378dc6b36fdd078918

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh