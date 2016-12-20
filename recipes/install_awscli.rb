#
# Cookbook Name:: workstation
# Recipe:: install_awscli
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'awscli'
package 'python3-PyYAML'

template ::File.join(node['workstation']['user']['home'], '.firstrun', 'configure_aws.sh') do
  source 'configure_aws.sh.erb'
  notifies :create, 'template[/etc/profile.d/firstrun.sh]'
  action :create
end

directory '/shared'

link ::File.join(node['workstation']['user']['home'], '.aws') do
  to '/shared/.aws'
  link_type :symbolic
  user node['workstation']['user']['name']
  group node['workstation']['user']['group']
  action :create
end