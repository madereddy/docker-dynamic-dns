Docker Dynamic DNS Client
=====

This is a [DDNS client for Docker](https://hub.docker.com/r/cush/docker-dynamic-dns), a fork of [blaize/docker-dynamic-dns](https://hub.docker.com/r/blaize/docker-dynamic-dns/). This fork has added functionality of being able to set multiple domain names using an optional environment variable called DOMAINS. A more robust explanation of what this project does can be obtained from [blaize's repo](https://github.com/theonemule/docker-dynamic-dns) and an example of proper usage is below.

## Docker-Compose Example

```
---
version: "2"
services:
  no-ip:
   image: cush/docker-dynamic-dns
   container_name: ddns
   environment:
     - USER1=username
     - PASSWORD1=yourpassword
     - HOSTNAME1=test.example.com
     - USER2=anotheruser
     - PASSWORD2=your2ndpassword
     - HOSTNAME2=demo.example.com
     - DETECTIP=1
     - INTERVAL=1
     - SERVICE=google
     - DOMAINS=2
   restart: unless-stopped
```
For Docker run examples please reference [blaize's repo](https://github.com/theonemule/docker-dynamic-dns)

## Environment Variables

* **DOMAINS**: The number of host names you plan to use. Optional variable that is generally 1.

* **USER#**: the username(s) for the service.

* **PASSWORD#**: the password(s) or token for the service.

* **HOSTNAME#**: The host name(s) that you are updating. ie. example.com

* **DETECTIP**: If this is set to 1, then the script will detect the external IP of the service on which the container is running, such as the external IP of your DSL or cable modem.

* **IP**: if DETECTIP is not set, you can specify an IP address.

* **INTERVAL**: How often the script should call the update services in minutes.

* **SERVICE**: The service you are using. Currently, the script is setup to use Google Domains (google), DuckDNS (duckdns), DynDNS (dyndns), and NO-IP (noip). Set the service to the value in parenthesis.

### Acknowledgements:

GitHub: https://github.com/theonemule/docker-dynamic-dns

Author's Site: https://www.blaize.net



