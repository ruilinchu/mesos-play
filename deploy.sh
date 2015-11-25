#!/bin/bash
yum install epel-release -y
yum install ansible -y
cat > /etc/ansible/hosts <<EOF 

[zookeeper]
node1 zoo_id=1
node2 zoo_id=2
node3 zoo_id=3

[mesos-master]
node[1:3]

[mesos-slave]
node[4:5]

EOF

cat >> /etc/hosts <<EOF

10.0.15.11 node1
10.0.15.12 node2
10.0.15.13 node3
10.0.15.14 node4
10.0.15.15 node5

EOF

ssh-keygen -t rsa
for i in `grep 10.0.15 /etc/hosts | awk '{print $2}'`; do
    ssh-keyscan $i;
done > ~/.ssh/known_hosts

ansible-playbook ssh_key.yml --ask-pass 




