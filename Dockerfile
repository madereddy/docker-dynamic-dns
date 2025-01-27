FROM cgr.dev/chainguard/wolfi-base:latest@sha256:da76d41652574266729c891334f257e00c2f35c00785c99025df148ef5015dab

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh