FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3a4709d9dfc2cf8f1d78ee8788d7b9ab907778a8be89543e961a2c29aa046529

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh