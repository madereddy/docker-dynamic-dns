FROM cgr.dev/chainguard/wolfi-base:latest@sha256:d653e81239ff979cf810ca6f706d1bcf56d6994da75f37b4702327a3c2696900

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh