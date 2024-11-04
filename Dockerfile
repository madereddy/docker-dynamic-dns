FROM cgr.dev/chainguard/wolfi-base:latest@sha256:ef080119151e476ac0c19984223ebd65d7d120ba9119159e2cc79f9b4144e7e4

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh