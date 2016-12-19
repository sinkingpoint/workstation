directory ::File.join(node['workstation']['user']['home'], '.firstrun') do
  user node['workstation']['user']['name']
  group node['workstation']['user']['group']
  action :create
end