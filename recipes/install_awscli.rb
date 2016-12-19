package 'awscli'

template ::File.join(node['workstation']['user']['home'], '.firstrun', 'configure_aws.sh') do
  source 'configure_aws.sh.erb'
  notifies :create, 'template[/etc/profile.d/firstrun.sh]'
  action :create
end
