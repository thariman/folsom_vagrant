# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :control do |node01_config|
	node01_config.vm.name = "control"
  	node01_config.vm.box = "quantal64"
  	node01_config.vm.network :hostonly, "100.10.10.51"
  	node01_config.vm.network :hostonly, "100.20.20.51"
	node01_config.vm.network :bridged, :bridge => "en0: Ethernet", :auto_config => false
  	node01_config.vm.forward_port 22, 8022, :auto => true
	node01_config.vm.host_name = "control".to_s
	node01_config.vm.customize [ "modifyvm", :id, "--memory", 1024]
	node01_config.vm.customize [ "modifyvm", :id, "--cpus", 2]
	node01_config.vm.provision :shell, :path => "if_control.sh"
  end

  config.vm.define :network do |node02_config|
	node02_config.vm.name = "network"
  	node02_config.vm.box = "quantal64"
  	node02_config.vm.network :hostonly, "100.10.10.52"
  	node02_config.vm.network :hostonly, "100.20.20.52"
	node02_config.vm.network :bridged, :bridge => "en0: Ethernet", :auto_config => false
  	node02_config.vm.forward_port 22, 8023, :auto => true
	node02_config.vm.host_name = "network".to_s
	node02_config.vm.customize [ "modifyvm", :id, "--memory", 1024]
	node02_config.vm.customize [ "modifyvm", :id, "--cpus", 2]
	node02_config.vm.provision :shell, :path => "if_network.sh"
  end

  config.vm.define :compute do |node03_config|
	node03_config.vm.name = "compute"
  	node03_config.vm.box = "quantal64"
  	node03_config.vm.network :hostonly, "100.10.10.53"
  	node03_config.vm.network :hostonly, "100.20.20.53"
  	node03_config.vm.forward_port 22, 8024, :auto => true
	node03_config.vm.host_name = "compute".to_s
	node03_config.vm.customize [ "modifyvm", :id, "--memory", 2048]
	node03_config.vm.customize [ "modifyvm", :id, "--cpus", 4]
  end

end
