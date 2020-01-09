#!/bin/bash

apt -y remove --purge network-manager-openvpn network-manager-openvpn-gnome
apt -y remove --purge openvpn-as
apt -y remove --purge openvpn
rm -rf /etc/openvpn
rm -rf /usr/local/openvpn_as
echo "fini";

