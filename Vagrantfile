# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'jhcook/fedora25'

  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'workstation'
    vb.memory = '4096'
    vb.cpus = '4'
    vb.gui = true
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--vram', '128']
  end

  home_folder = ENV['HOME'] || ENV['USERPROFILE']
  aws_folder = File.join(home_folder, '.aws')
  work_folder = '/work'

  config.vm.synced_folder aws_folder,  '/shared/.aws' if File.exist? aws_folder
  config.vm.synced_folder work_folder, '/shared/dev' if File.exist? work_folder

  # Workaround until chef handles DNF correctly
  config.vm.provision 'shell', inline: 'sudo dnf install yum -y'

  config.vm.provision 'chef_solo' do |chef|
    chef.version = '12.6.0'
    chef.add_recipe 'workstation'
  end
end
