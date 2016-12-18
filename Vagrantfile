# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'jhcook/fedora25'

  config.vm.provider 'virtualbox' do |v|
    v.gui = true
  end
  
  # Workaround until chef handles DNF correctly
  config.vm.provision 'shell', inline: 'sudo dnf install yum -y'

  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'workstation'
  end
end
