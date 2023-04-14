#!/bin/bash

# Tworzenie bazy danych
ipset --flush
declare -a countries=("jp" "cn" "ru" "ua" "tr" "be" "de")
for country in "${countries[@]}"
do
    ipset create "$country" hash:net
    for IP in $(wget -O - "http://www.ipdeny.com/ipblocks/data/countries/$country.zone")
    do
        ipset add "$country" "$IP"
    done
done

# Blokowanie
for country in "${countries[@]}"
do
    iptables -A INPUT -m set --match-set "$country" src -j DROP
done

# Wyświetlanie listy reguł iptables
iptables --list

exit 0
