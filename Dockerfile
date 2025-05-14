FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3525626232d33ca137d020474cdf7659bc29b3c85b02d46c5ecf766cd72bbc59

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh