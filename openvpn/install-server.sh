#!/bin/bash

apt -y install network-manager-openvpn network-manager-openvpn-gnome
apt update 
apt -y install ca-certificates wget net-tools
wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
echo "deb http://as-repository.openvpn.net/as/debian bionic main">~/openvpn-as-repo.list
mv ~/openvpn-as-repo.list /etc/apt/sources.list.d/openvpn-as-repo.list
apt update
apt -y install openvpn-as
cp -r client/ /etc/openvpn/
cp -r server/ /etc/openvpn/
cp update-resolv-conf /etc/openvpn/
service openvpn restart
echo ""
exit 0;