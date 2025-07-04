FROM cgr.dev/chainguard/wolfi-base:latest@sha256:1c6a85817d3a8787e094aae474e978d4ecdf634fd65e77ab28ffae513e35cca1

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh