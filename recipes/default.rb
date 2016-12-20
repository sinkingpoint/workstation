#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'git'

include_recipe 'workstation::create_user'
include_recipe 'workstation::set_hostname'
include_recipe 'workstation::init_dotfiles'
include_recipe 'workstation::install_zsh'
include_recipe 'workstation::install_vim'
include_recipe 'workstation::install_ruby'
include_recipe 'workstation::install_vscode'
include_recipe 'workstation::init_profile'
include_recipe 'workstation::init_firstrun'
include_recipe 'golang'
