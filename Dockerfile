FROM cgr.dev/chainguard/wolfi-base:latest@sha256:83ebd22ee52e3a61b7796242fb34459707fbb327885d9091864f42f6104fd5de

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh