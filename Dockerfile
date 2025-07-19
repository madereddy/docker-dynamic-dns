FROM cgr.dev/chainguard/wolfi-base:latest@sha256:952010d4b1cf8dfb420ff86d66eb7ec78468b9cf60366dc8939f496322c458d8

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh