#
# Cookbook Name:: my_check_version
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
Chef::Log.info("I am in 0.1.3")
cookbook_file '/root/config.txt' do
  source 'config.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/root/index.html' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'root'
  group 'root'
end
=end
Chef::Log::info("My platform is #{node['platform']}")

if node['platform'] == 'windows'
	then
	Chef::Log::info(" I am in windows ")
else
	Chef::Log::info(" I am not in windows ")
end