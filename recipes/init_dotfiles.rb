#
# Cookbook Name:: workstation
# Recipe:: init_dotfiles
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git ::File.join(node['workstation']['user']['home'], '.dotfiles') do
  repository node['workstation']['dotfiles']['repo']
  action :sync
end

node['workstation']['dotfiles']['links'].each do |link_meta|
  link link_meta[:from] do
    to ::File.join(node['workstation']['user']['home'], '.dotfiles', link_meta[:to])
    link_type :symbolic
    user node['workstation']['user']['name']
    group node['workstation']['user']['group']
    action :create
  end
end
