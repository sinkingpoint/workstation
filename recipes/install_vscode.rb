remote_file ::File.join(Chef::Config[:file_cache_path], 'vscode.rpm') do
  source node['workstation']['vscode']['source']
  checksum node['workstation']['vscode']['checksum']
  action :create
end

yum_package 'vscode' do
  source ::File.join(Chef::Config[:file_cache_path], 'vscode.rpm')
  action :install
end