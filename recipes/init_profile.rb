#
# Cookbook Name:: workstation
# Recipe:: init_profile
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git ::File.join(node['workstation']['user']['home'], '.profile.d') do
  repository node['workstation']['profile']['repo']
  action :sync
end

node['workstation']['profile']['files'].each do |file|
  link "/etc/profile.d/profile-#{file}" do
    to ::File.join(node['workstation']['user']['home'], '.profile.d', file)
    link_type :symbolic
    action :create
  end
end