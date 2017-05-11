#
# Cookbook Name:: my_template_test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/root/server.xml' do
  source 'server.xml.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    port: node['my_template_test']['port'],
    connection_timeout: node['my_template_test']['connection_timeout'],
    redirectport: node['my_template_test']['redirectport']
  })
end