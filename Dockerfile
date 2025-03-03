FROM cgr.dev/chainguard/wolfi-base:latest@sha256:5ec50de5d68fc25ca132976c4f4c29e2763749210aef0e3811281fb3a6a9031b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh