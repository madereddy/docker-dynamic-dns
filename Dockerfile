FROM cgr.dev/chainguard/wolfi-base:latest@sha256:898e4f30d920607c58acc01eabdfc9ac0725fb83b780d695542b3c3a3d265e48

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh