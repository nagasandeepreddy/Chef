#
# Cookbook Name:: parent
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe'child::child'
Chef::Log.info("my git installer name is #{node['child']['git_installer_name']}")