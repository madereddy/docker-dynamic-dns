FROM cgr.dev/chainguard/wolfi-base:latest@sha256:54db2c1df599961424cff34b05fd4d852e73a029b19fcd3d4973fa0cb30fd8ec

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh