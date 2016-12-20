# The keyboard shortcuts to create
# Name: The name of the shortcut
# Command: The command to link the shortcut to
# Binding: The key conbination to bind to
default['workstation']['gnome']['keyboard_shortcuts'] = [
  {
    name: 'Terminal',
    command: 'gnome-terminal',
    binding: '<Primary><Alt><Meta>t'
  }
]

# The gnome extensions to install
# Name: The name of the extention from the gnome database
# Source: Where to download the extension from
# Destination: Where to unzip the extention to (generally `/home/colin/.local/share/gnome-shell/extensions/<name>`)
default['workstation']['gnome']['extensions'] = [
  {
    name: 'dash-to-dock@micxgx.gmail.com',
    source: 'https://extensions.gnome.org/review/download/6265.shell-extension.zip',
    destination: '/home/colin/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com'
  }
]

# The applications to have in the launcher
default['workstation']['gnome']['favorite_apps'] = [
  'firefox.desktop',
  'org.gnome.Nautilus.desktop',
  'org.gnome.Terminal.desktop'
]

# The dconf settings to set
default['workstation']['gnome']['settings'] = [
  {
    dir: 'org.gnome.nautilus.icon-view',
    key: 'default-zoom-level',
    value: 'small'
  }
]