#
# Cookbook Name:: workstation
# Recipe:: install_vscode
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

remote_file ::File.join(Chef::Config[:file_cache_path], 'vscode.rpm') do
  source node['workstation']['vscode']['source']
  notifies :install, 'yum_package[vscode]'
  action :create
end

yum_package 'vscode' do
  source ::File.join(Chef::Config[:file_cache_path], 'vscode.rpm')
  action :nothing
end
