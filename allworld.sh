#!/bin/bash

# Wykluczanie państw UE
excluded="at\|be\|bg\|cy\|cz\|de\|dk\|ee\|es\|fi\|fr\|gr\|hr\|hu\|ie\|it\|lt\|lu\|lv\|mt\|nl\|pl\|pt\|ro\|se\|si\|sk"

# Tworzenie bazy danych
ipset --flush
declare -a countries=("jp" "cn" "ru" "ua" "tr" "be" "de")
for country in "${countries[@]}"
do
    if [[ $excluded != *"$country"* ]]; then
        ipset create "$country" hash:net
        for IP in $(wget -O - "http://www.ipdeny.com/ipblocks/data/countries/$country.zone")
        do
            ipset add "$country" "$IP"
        done
    fi
done

# Blokowanie
iptables -I INPUT -m set --match-set "jp" src -j DROP
iptables -I INPUT -m set --match-set "cn" src -j DROP
iptables -I INPUT -m set --match-set "ru" src -j DROP
iptables -I INPUT -m set --match-set "ua" src -j DROP
iptables -I INPUT -m set --match-set "tr" src -j DROP
iptables -I INPUT -m set --match-set "be" src -j DROP
iptables -I INPUT -m set --match-set "de" src -j DROP

# Wyświetlanie listy reguł iptables
iptables --list

exit 0
