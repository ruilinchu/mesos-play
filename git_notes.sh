#!/bin/sh

mkdir -p roles
cd roles

# fix the host interation loop for cfg template
#git clone https://github.com/samos123/ansible-zookeeper
git clone https://github.com/AnsibleShipyard/ansible-mesos
git clone https://github.com/AnsibleShipyard/ansible-marathon

cat >> ansible-mesos/defaults/main.yml <<EOF

mesos_ip: "{{ ansible_enp0s8.ipv4.address }}" 
mesos_version: "0.25.0" 

EOF

cat >>  ansible-marathon/defaults/main.yml <<EOF

marathon_version: "0.11.1"

EOF


