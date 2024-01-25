FROM cgr.dev/chainguard/wolfi-base:latest@sha256:af8a06428ec2679884374891296754df12d5247ccaf95d2cc5d844d915a2218f

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh