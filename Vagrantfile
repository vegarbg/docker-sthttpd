# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "base"
  config.vm.provision "shell", inline: "chmod a+x /vagrant/buildpackage.sh && /vagrant/buildpackage.sh"

end
