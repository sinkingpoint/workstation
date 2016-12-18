#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'workstation::create_user'
include_recipe 'workstation::init_dotfiles'