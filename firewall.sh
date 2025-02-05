#!/bin/bash
#
#script de firewall para icmp e ssh (stateful) usando o iptables
#
iptables -F
iptables -X
#
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP
#
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
#
iptables -A INPUT -p icmp --icmp-type echo-request -s 10.0.2.15/32 \
	 -i eth0 -j ACCEPT

iptables -A INPUT -p tcp --dport 22 -s 10.0.2.15/32 -j ACCEPT

#
iptables -A OUTPUT -m conntrack --ctstate ESTABLISHED -j ACCEPT
