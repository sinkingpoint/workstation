# Ruby versions to install for each user
default['rvm']['user_installs'] = [
  { 
    'user'          => 'colin',
    'rubies'        => ['ruby-2.3.1']
  }
]

# The systemwide default ruby version
default['rvm']['default_ruby'] = 'ruby-2.3.1'