#!/bin/bash
sudo apt-get install openssh-server

sudo apt-get install iptables-persistent
sudo iptables -A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo service netfilter-persistent save

