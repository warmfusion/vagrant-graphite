# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  # The standard provisioner used for all machines
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
	puppet.module_path = "modules"
    puppet.manifest_file  = "site.pp"
  end
   
  # Some default configuration options
  
  
  #Configure a Graphite machine to run the graphite VM upon
  config.vm.define "graphite" do |graphite|
	graphite.vm.box="centos-6.4"
	graphite.vm.hostname = "graphite.tobyjackson.net"
    graphite.vm.network "private_network", ip: "192.168.50.10"
	graphite.vm.network "forwarded_port", guest: 80, host: 8080

  end
  
  config.vm.define "sonar" do |sonar|
	sonar.vm.box="centos-6.4"
	sonar.vm.hostname = "sonar.tobyjackson.net"
    sonar.vm.network "private_network", ip: "192.168.50.20"
  end
   

end
