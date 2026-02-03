FROM cgr.dev/chainguard/wolfi-base:latest@sha256:2bdab5abde97a1487c667d3ffcc7265fa9abdeb5b2365bca9a64a5f3afc5a563

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh