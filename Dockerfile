FROM cgr.dev/chainguard/wolfi-base:latest@sha256:7574456f268bc839ac78828865087c04a4297ca226b0eb5d051d4222e7690081

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh