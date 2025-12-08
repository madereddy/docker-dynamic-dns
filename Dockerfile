FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c0ead40adeb4b6f55c80c011032a20272e10bde3d745c18bbab7345fccff6791

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh