bash 'Set Hostname' do 
  code <<-EOH
    sudo hostname "#{node['workstation']['hostname']}"
    echo "#{node['workstation']['hostname']}" | sudo tee /etc/hostname
  EOH

  not_if "[ `hostname` == \"#{node['workstation']['hostname']}\" ]"
end