#!/bin/bash

REPO="https://raw.githubusercontent.com/zhets/scriptvps/main/"
wget -q -O /usr/local/badvpn-udpgpw "${REPO}badvpn/badvpn-udpgpw"
chmod +x /usr/local/badvpn-udpgpw
wget -q -O /etc/systemd/system/badvpn1.service "${REPO}badvpn/badvpn1.service"
wget -q -O /etc/systemd/system/badvpn2.service "${REPO}badvpn/badvpn2.service"
wget -q -O /etc/systemd/system/badvpn3.service "${REPO}badvpn/badvpn3.service"
wget -q -O /etc/systemd/system/badvpn4.service "${REPO}badvpn/badvpn4.service"
wget -q -O /etc/systemd/system/badvpn5.service "${REPO}badvpn/badvpn5.service"
systemctl disable badvpn1
systemctl stop badvpn1
systemctl enable badvpn1
systemctl start badvpn1

systemctl disable badvpn2
systemctl stop badvpn2
systemctl enable badvpn2
systemctl start badvpn2

systemctl disable badvpn3
systemctl stop badvpn3
systemctl enable badvpn3
systemctl start badvpn3

systemctl disable badvpn4
systemctl stop badvpn4
systemctl enable badvpn4
systemctl start badvpn4

systemctl disable badvpn5
systemctl stop badvpn5
systemctl enable badvpn5
systemctl start badvpn5
