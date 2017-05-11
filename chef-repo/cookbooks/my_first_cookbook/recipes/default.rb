#
# Cookbook Name:: my_first_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello My first cookbook")
=begin
directory '/root/apache2/p1/p2/p3' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end
=end

=begin
remote_file 'c:/chef/Git-2.12.2.2-64-bit.exe' do
  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
  action :create
end

execute 'install_git' do
 command 'c:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
 not_if { File.exists?('C:\Program Files\Git\bin\git.exe')}
end
=end

remote_file node['my_first_cookbook']['remote_file'] do
  source node['my_first_cookbook']['git_download_loc']
  action :create
end

execute 'install_git' do
 command 'c:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
 not_if { File.exists?(node['my_first_cookbook']['file_check'])}
end

Chef::Log.info("my git installer name is #{node['my_first_cookbook']['git_installer_name']}")
Chef::Log.info("my git path is #{node['my_first_cookbook']['git_path_name']}")
Chef::Log.info("my  git downlaod location is is #{node['my_first_cookbook']['git_source_url']}")

