FROM cgr.dev/chainguard/wolfi-base:latest@sha256:19f93882ea0865d92eb467e4d82eb19bc4f0bc7f153ab770ed8e45761c4febb6

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh