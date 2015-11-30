#!/bin/sh

mkdir roles
cd roles

# fix the host interation loop for cfg template
#git clone https://github.com/samos123/ansible-zookeeper
git clone https://github.com/AnsibleShipyard/ansible-mesos
git clone https://github.com/AnsibleShipyard/ansible-marathon
echo mesos_ip: "{{ ansible_enp0s8.ipv4.address }} " >>  ansible-mesos/defaults/main.yml


