directory ::File.join(node['workstation']['user']['home'], '.firstrun') do
  user node['workstation']['user']['name']
  group node['workstation']['user']['group']
  action :create
end

include_recipe 'workstation::init_gnome_settings'
include_recipe 'workstation::init_ssh'