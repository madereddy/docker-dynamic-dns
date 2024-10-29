FROM cgr.dev/chainguard/wolfi-base:latest@sha256:09b9460e4ff828ac2f84df2759adb0a573bb5e0a57e4c6507074a2c112d5607f

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh