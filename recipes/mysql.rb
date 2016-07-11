#
# Cookbook Name:: ubuntu12
# Recipe:: mysql
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

ubuntu12_mysql 'mysql' do
  bind_address node['ubuntu12']['mysql']['bind_address']
  max_allowed_packet node['ubuntu12']['mysql']['max_allowed_packet']
  root_password node['ubuntu12']['mysql']['root_password']
  remote_root node['ubuntu12']['mysql']['remote_root']
  action :create
end

