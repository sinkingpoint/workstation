docker_installation_script 'default' do
  repo 'main'
  script_url 'https://get.docker.com/'
  action :create
end

group 'docker' do
  members [node['workstation']['user']['name']]
  append true
end

service 'docker' do
  action :start
end