# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
	config.vm.define "nodesoi" do |subconfig|
		subconfig.vm.box = "jasonc/centos7-32bit"
		subconfig.vm.hostname = "nodesoi"
#		subconfig.vm.network "public_network"
		subconfig.vm.network "forwarded_port", guest: 80, host: 9900
		subconfig.vm.network "forwarded_port", guest: 22, host: 9999
#		subconfig.ssh.insert_key = false
		subconfig.vm.provider "virtualbox" do |vb|
			vb.name = "nodesoi2"
#			vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
		end
	end
end
