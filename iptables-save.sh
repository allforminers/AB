#!/bin/bash

# Flush current rules and set default policies to accept
iptables -F
iptables -X
iptables -Z
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

# Block UDP traffic to port 123 from 37.27.32.0/24
iptables -A INPUT -p udp -s 37.27.32.0/24 --dport 123 -j DROP

# Save rules to file
iptables-save > /etc/iptables/rules.v4
