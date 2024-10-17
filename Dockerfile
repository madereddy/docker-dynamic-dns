FROM cgr.dev/chainguard/wolfi-base:latest@sha256:51aa795b7bc48734ec275d7e34e1d17900b9954804fbce39238488cc1daad395

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh