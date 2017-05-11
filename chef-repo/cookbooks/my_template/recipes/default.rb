#
# Cookbook Name:: my_template
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "ssh" do  
	action :nothing
end
template '/root/sudors' do
  source 'sudors.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['my_template']['sudo']['groups'],
    sudoers_users: node['my_template']['sudo']['users'],
    passwordless: node['my_template']['passwordless']
  })
  notifies :stop, 'service[ssh]', :before
  notifies :start, 'service[ssh]', :immediately
end