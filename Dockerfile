FROM cgr.dev/chainguard/wolfi-base:latest@sha256:56614cdca9ca3f091f18e594148e65427109a3c45f30d79263eecf4b711c5ae9

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh