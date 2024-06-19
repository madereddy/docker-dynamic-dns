FROM cgr.dev/chainguard/wolfi-base:latest@sha256:23cef6b84d99bdf741b13c5792899484808570218c2cd42638e5bf385594fd97

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh