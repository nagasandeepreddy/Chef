default['my_first_cookbook']['remote_file'] = 'c:/chef/Git-2.12.2.2-64-bit.exe'
default['my_first_cookbook']['file_check'] = 'C:\Program Files\Git\bin\git.exe'
default['my_first_cookbook']['git_download_loc'] ='https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
default['my_first_cookbook']['git_installer_name'] = "Git-2.12.2.2-64-bit.exe"
default['my_first_cookbook']['git_path_name'] = "c:/chef/#{node['my_first_cookbook']['git_installer_name']}"
default['my_first_cookbook']['git_source_url'] ="https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/#{node['my_second_oracle_cookbook']['git_installer_name']}"