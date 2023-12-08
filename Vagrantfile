# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SCRIPT
wget https://apt.puppetlabs.com/puppet8-release-jammy.deb
dpkg -i puppet8-release-jammy.deb
apt-get update -y
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  if Vagrant.has_plugin?("vagrant-vbguest") then
    config.vbguest.auto_update = false
  end
  config.vm.provision "shell", privileged: true, inline: $script
  
  config.vm.provision :hosts do |provisioner|
    provisioner.add_host "10.0.0.10", ['srv-web']
    provisioner.add_host "10.0.0.11", ['srv-mysql']
    provisioner.add_host "10.0.0.12", ['srv-memcached']
  end

  config.vm.define :web do |web|
    web.vm.network :private_network, ip: "10.0.0.10"
    web.vm.provision "shell", privileged: true, path: 'provisioning.sh'    
    web.vm.provider :virtualbox do |vb|
      vb.memory = 1024
      vb.cpus = 2
    end
  end

  config.vm.define :mysql do |mysql|
    mysql.vm.network :private_network, ip: "10.0.0.11"
    mysql.vm.provision "shell", privileged: true, path: 'provisioning.sh'
    mysql.vm.provider :virtualbox do |vb|
      vb.memory = 1024
      vb.cpus = 2
    end
  end

    config.vm.define :memcached do |memcached|
      memcached.vm.network :private_network, ip: "10.0.0.12"
      memcached.vm.provision "shell", privileged: true, path: 'provisioning.sh'
      memcached.vm.provider :virtualbox do |vb|
        vb.memory = 1024
        vb.cpus = 2
      end
    end  
end