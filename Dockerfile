FROM cgr.dev/chainguard/wolfi-base:latest@sha256:79517cda9bc56aa3a0282c457d7179e991af159c85a522828cbbf8ba264ae2d8

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh