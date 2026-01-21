FROM cgr.dev/chainguard/wolfi-base:latest@sha256:0c79f2ee04e77203c3bc487ef237faac05e99ffbc05d67a1c53e86ba58100f37

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh