# dnsmasq in docker on raspberry pi

It is simple DNS and DHCP server for running as docker container on Raspberry Pi. Dockerfile is based on https://hub.docker.com/r/andyshinn/dnsmasq/~/dockerfile/

# How to use

## Config

* Modify config/dnsmasq.conf to add IPs of upstream DNS servers, IP of your gateway and static IPs and names to be allocated via DHCP.
* Modify config/hosts to add fully static IPs

## Logs

Look in logs/dnsmasq.log

## Scripts

* build.sh - to build image
* run.sh - to run container off built image
* view_leases.sh - to view current DHCP leases
