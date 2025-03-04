FROM cgr.dev/chainguard/wolfi-base:latest@sha256:57921b0cac85ef46aab8cfbe223e9376254d4f9456e07a5c6607891897ddad8b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh