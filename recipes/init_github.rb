#
# Cookbook Name:: workstation
# Recipe:: init_github
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# We run this as a first run script because we need user input
template ::File.join(node['workstation']['user']['home'], '.firstrun', 'init_ssh.sh') do
  source 'init_ssh.sh.erb'
  variables ({
    git_servers: node['workstation']['ssh']['github_servers'],
    ssh_directory: ::File.join(node['workstation']['user']['home'], '.ssh')
  })
  user node['workstation']['user']['name']
  group node['workstation']['user']['group']
  notifies :create, 'template[/etc/profile.d/firstrun.sh]'
  action :create
end
