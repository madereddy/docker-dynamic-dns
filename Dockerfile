FROM cgr.dev/chainguard/wolfi-base:latest@sha256:bda46ad410744ba315890cd1414d5ec2434d85403bc61b01a02208256f274635

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh