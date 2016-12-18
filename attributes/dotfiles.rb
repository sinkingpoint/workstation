# The location of a git repo containing a number of . files
# Note: This should be the HTTPS link as we don't have SSH enabled at this point
default['workstation']['dotfiles']['repo'] = 'https://github.com/sinkingpoint/dotfiles.git'

# Links from the dotfiles in the repo to an absolute location on the filepath
default['workstation']['dotfiles']['links'] = [
  {
    to: '.zshrc',
    from: '/home/colin/.zshrc'
  },
  {
    to: '.vimrc',
    from: '/home/colin/.vimrc'
  }
]