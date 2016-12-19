#
# Cookbook Name:: workstation
# Recipe:: set_hostname
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

bash 'Set Hostname' do 
  code <<-EOH
    sudo hostname "#{node['workstation']['hostname']}"
    echo "#{node['workstation']['hostname']}" | sudo tee /etc/hostname
  EOH

  not_if "[ `hostname` == \"#{node['workstation']['hostname']}\" ]"
end
