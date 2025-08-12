FROM cgr.dev/chainguard/wolfi-base:latest@sha256:1fd981aa0bcefd8da87ce55a9ae907862fcb6835c658fdb284867117fb0268ce

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh