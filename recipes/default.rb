#
# Cookbook Name:: ubuntu12
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'ubuntu12::apt'
include_recipe 'ubuntu12::mysql'
include_recipe 'ubuntu12::apache'
include_recipe 'ubuntu12::php'

