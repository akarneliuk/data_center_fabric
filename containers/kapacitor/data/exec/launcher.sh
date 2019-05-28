#!/bin/bash

# Extracting the management IPv4 of the node
cat | sed 's/.*DHCPACK on \([[:digit:]\.]\+\?\) to.*/\1/' > /tmp/exec/ip.conf

# Setting IP variable
IP=$(cat data/exec/ip.conf)
