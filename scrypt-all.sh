#!/bin/bash

# Wykluczenie państw UE
excluded="at\|be\|bg\|cy\|cz\|de\|dk\|ee\|es\|fi\|fr\|gr\|hr\|hu\|ie\|it\|lt\|lu\|lv\|mt\|nl\|pl\|pt\|ro\|se\|si\|sk"

# Tworzenie bazy danych
sudo ipset --flush
for country in $(wget -O - http://www.ipdeny.com/ipblocks/data/countries/ | grep -vE $excluded | grep -oP '(?<=href=")[^"]*(?=/")')
do
    sudo ipset create $country hash:net
    for IP in $(wget -O - http://www.ipdeny.com/ipblocks/data/countries/$country.zone)
    do
        sudo ipset add $country $IP
    done
done

# Blokowanie
for country in $(wget -O - http://www.ipdeny.com/ipblocks/data/countries/ | grep -vE $excluded | grep -oP '(?<=href=")[^"]*(?=/")')
do
    sudo iptables -A INPUT -m set --match-set $country src -j DROP
done

# Wyświetlanie listy reguł iptables
sudo iptables --list

exit 0
