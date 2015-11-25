# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create some chunk servers, each with two additional disks
  (1..5).each do |i|
    config.vm.define "node#{i}" do |node|
      #      node.vm.box = "puppetlabs/centos-7.0-64-puppet" 
      node.vm.box = "box-cutter/centos71"
      node.vm.hostname = "node#{i}"
      node.vm.network :private_network, ip: "10.0.15.1#{i}"
      #       node.vm.network "forwarded_port", guest: 80, host: "808#{i}"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "520"
      end
    end
  end
  
end
