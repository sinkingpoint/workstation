include_recipe 'rvm::system'

group 'rvm' do
  members [node['workstation']['user']['name']]
  append true
end