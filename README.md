# Workstation

This cookbook makes a Fedora workstation which aims to be generic (or at least 
providing the ability to configure things to your liking).

## Things the box has:

  - A user with a name
  - The ability to link dotfiles
  - The ability to add SSH keys to Github Enterprise servers of your choice
  - The ability to install gnome extensions and configure dconf entries
  - Installs the AWS CLI
  - Installs RVM
  - Installs Vim
  - Installs VSCode
  - Installs ZSH + Oh My ZSH
  - Sets the hostname

To disable any of these, remove them from the default recipe.

## Changing the username

You can change the username by changing the username field in the user.rb attributes file.

## Changing the password

You'll need to change the password hash in the `user.rb` attributes file in order to actually log in.
It's the output from `openssl passwd -1 "theplaintextpassword"`.

## Changing the dotfiles repo

By default this workstation pulls my dotfiles. You should totally make your own repo and
point it at that. This is done by changing the repo link in the `dotfiles.rb` file, and
adding links to put them in the right place.

## GitHub

### Adding GHE servers

If you don't work at Xero, you probably have your own GHE server sitting around. You should
point this repo at it by setting the GHE server list in `github.rb`

### Public Github

If you want to be able to contribute to public github as well, then set the `enable_public_github`
flag in the github.rb attributes file. You will be prompted for credentials to set up an SSH key
on firstrun

### Swapping between github profiles

By default, we put a .gitconfig-*server* file into the home directory for each github server we
set up. I have the following bash function in my zshrc to swap between them:

```bash
enable-gh() {
  mv ~/.gitconfig-$1 ~/.gitconfig
}
```

which allows me to call `enable-gh github.com` to enable my public github profile for example.

## Gnome Extensions + Keyboard Shortcuts

DConf is hard. This cookbook makes it slightly more tolerable. In the `gnome_settings.rb` file
you'll find arrays for configuration things. 

### Keyboard Shortcuts

I've included a Keyboard shortcut as an example 
which replicates the standard Ctrl-Alt-T = Terminal behaviour. The basic gist is that 
Keyboard shortcuts have a name, (bash) command to run, and a binding.
The binding is just a combination of keys to trigger the command. The only gotcha
I've found is that on Fedora Ctrl is given as `<Primary><Meta>` rather than something like `<Ctrl>`

### Gnome Extensions

I use a couple of gnome extensions to make gnome nicer. You can find them at https://extensions.gnome.org/.
They name a package name, remote zip file and a local path. More documentation about these can be found
in the attributes file.

### Favorite Apps

These are the applications that appear in the launcher. Basically just a list of .desktop entries

### DConf Settings

In this attribute you can specify arbitrary dconf settings to run. I've included an example 
which sets my nautilus icons to small, but go exploring the dconf tree for more things

## Profile scripts

I maintain an internal repo of profile scripts which are run on shell startup. This is specified 
in the `init_profile.rb` file, along with the files in the repo. You should change this path or
remove the recipe from the run list.