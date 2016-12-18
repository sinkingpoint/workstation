package 'zsh'

git ::File.join(node['workstation']['user']['home'], '.oh-my-zsh') do
  repository 'git://github.com/robbyrussell/oh-my-zsh.git'
  action :sync
end

user node['workstation']['user']['name'] do
  shell '/bin/zsh'
  action :modify
end