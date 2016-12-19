default['workstation']['gnome']['keyboard_shortcuts'] = [
  {
    name: 'Terminal',
    command: 'gnome-terminal',
    binding: '<Primary><Alt><Meta>t'
  }
]

default['workstation']['gnome']['extensions'] = [
  {
    name: 'dash-to-dock@micxgx.gmail.com',
    source: 'https://extensions.gnome.org/review/download/6265.shell-extension.zip',
    destination: '/home/colin/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com'
  }
]

default['workstation']['gnome']['favorite_apps'] = [
  'firefox.desktop',
  'org.gnome.Nautilus.desktop',
  'org.gnome.Terminal.desktop'
]