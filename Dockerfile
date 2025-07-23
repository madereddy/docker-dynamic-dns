FROM cgr.dev/chainguard/wolfi-base:latest@sha256:25f877c4528bbb99a1d7ab0c063a7a64958e0cef9e73ee0b98bd52b6e2c83538

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh