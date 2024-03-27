FROM cgr.dev/chainguard/wolfi-base:latest@sha256:07d99e3cca939979cbfaa458b702a8910e55f0b6e6a68a2a8ec5ae41f2d9e639

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh