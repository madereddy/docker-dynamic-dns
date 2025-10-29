FROM cgr.dev/chainguard/wolfi-base:latest@sha256:318af6f376bc3d0ff9e361cd9f3a487690858e26b9a3540ca19452861bca3e1a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh