#
# Cookbook Name:: workstation
# Recipe:: init_firstrun
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory ::File.join(node['workstation']['user']['home'], '.firstrun') do
  user node['workstation']['user']['name']
  group node['workstation']['user']['group']
  action :create
end

include_recipe 'workstation::init_gnome_settings'
include_recipe 'workstation::init_github'
include_recipe 'workstation::install_awscli'

template '/etc/profile.d/firstrun.sh' do
  source 'first_run_profile.sh.erb'
  action :nothing
end
