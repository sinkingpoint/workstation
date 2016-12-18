
# The name of the user to create in the workstation
default['workstation']['user']['name'] = 'colin'

# The name of the base group of the user to create. By default this is the name of the user
default['workstation']['user']['group'] = 'colin'

# The shadow hash of the user, generated from `openssl passwd -1 "theplaintextpassword"`
default['workstation']['user']['password_hash'] = '$1$V4/8DobQ$h9K6.X2g5cCpYn36aw42.1'

# The home directory location for the user to create
default['workstation']['user']['home'] = '/home/colin'

# The name of the group for sudo users which the workstation user is added to
default['workstation']['user']['sudo_group'] = 'wheel'
