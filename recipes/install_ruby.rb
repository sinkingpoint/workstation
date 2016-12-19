#
# Cookbook Name:: workstation
# Recipe:: install_ruby
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'rvm::system'

group 'rvm' do
  members [node['workstation']['user']['name']]
  append true
end
