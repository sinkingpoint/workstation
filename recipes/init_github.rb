#
# Cookbook Name:: workstation
# Recipe:: init_github
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# We run this as a first run script because we need user input
template ::File.join(node['workstation']['user']['home'], '.firstrun', 'init_github_enterprise.sh') do
  source 'init_github_enterprise.sh.erb'
  variables ({
    git_servers: node['workstation']['ssh']['github_enterprise_servers'],
    ssh_directory: ::File.join(node['workstation']['user']['home'], '.ssh')
  })
  user node['workstation']['user']['name']
  group node['workstation']['user']['group']
  notifies :create, 'template[/etc/profile.d/firstrun.sh]'
  action :create
end


if node['workstation']['ssh']['enable_public_github']
  template ::File.join(node['workstation']['user']['home'], '.firstrun', 'init_public_github.sh') do
    source 'init_public_github.sh.erb'
    variables ({
      ssh_directory: ::File.join(node['workstation']['user']['home'], '.ssh')
    })
    user node['workstation']['user']['name']
    group node['workstation']['user']['group']
    notifies :create, 'template[/etc/profile.d/firstrun.sh]'
    action :create
  end
end