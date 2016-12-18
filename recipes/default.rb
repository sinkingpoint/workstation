#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'git'

include_recipe 'workstation::create_user'
include_recipe 'workstation::init_dotfiles'
include_recipe 'workstation::install_zsh'
include_recipe 'workstation::install_ruby'
include_recipe 'golang'