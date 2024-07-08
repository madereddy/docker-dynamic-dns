FROM cgr.dev/chainguard/wolfi-base:latest@sha256:5cc4736f5a03e9ba618760e5b21c1f1bc0ce275fc6ba86589c8dd26374c2647b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh