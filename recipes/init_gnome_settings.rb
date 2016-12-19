# Installs gnome extensions
node['workstation']['gnome']['extensions'].each do |extension|
  destination_file = ::File.join(Chef::Config[:file_cache_path], "#{extension[:name]}.zip")
  remote_file destination_file do
    source extension[:source]
    user node['workstation']['user']['name']
    group node['workstation']['user']['group']
    notifies :run, "bash[Unzip gnome extension #{extension['name']}]"
    action :create  
  end

  directory extension[:destination] do
    recursive true
    user node['workstation']['user']['name']
    group node['workstation']['user']['group']
    action :create
  end

  bash "Unzip gnome extension #{extension['name']}" do
    code "unzip #{destination_file} -d #{extension[:destination]}"
    user node['workstation']['user']['name']
    group node['workstation']['user']['group']
    action :nothing
  end
end

# A few Gnome settings have to go in an sh file to be run on log in, 
# because lots of things aren't setup until we log in
template ::File.join(node['workstation']['user']['home'], '.firstrun', 'init_gnome_settings.sh') do
  source 'gnome_settings.sh.erb'
  variables ({
    keybindings: node['workstation']['gnome']['keyboard_shortcuts']
  })
  user node['workstation']['user']['name']
  group node['workstation']['user']['group']
  notifies :create, 'template[/etc/profile.d/firstrun.sh]'
  action :create
end