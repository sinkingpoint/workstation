#
# Cookbook Name:: workstation
# Recipe:: create_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

user node['workstation']['user']['name'] do
  home node['workstation']['user']['home']
  password node['workstation']['user']['password_hash']
  manage_home true
  action :create
end

group node['workstation']['user']['sudo_group'] do
  members [node['workstation']['user']['name']]
  append true
  action :modify
end