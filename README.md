# dotfiles
Dotfiles for tmux, zsh, bash etc. Linux and Mac

This repository is meant to encapsulate full featured javascript and web dev workflow and set of tools. It has the following gols in mind:

- Be Cross-Platform, work on Mac OS, Linux and Windows
- Be command-line centric. It should not involve any graphical tools in order to be fully portable and work in text-only environments
- Be shortcut drived with intuitive and easy to remember key combinations
- Be simple and quick way to have a full working dev setup on any maching in seconds
- Be secure and not contain any access credentials so it can be used by anybody

### Pre-Requisites:
- Git
- Curl or Wget

# Install neccessary software
## Categories
### GUI tools
- [ ] Install Sublime Text 3
- [ ] Install Atom.io
- [ ] 
- [ ] 
- [ ] 
- [ ] 
- [ ] 


### CLI tools
- [ ] Setup ZSH
  - Setup theme
  - Setup aliases
- [ ] Setup Bash
  - Setup theme
  - Setup aliases
- [ ] Setup Tmux
  - Setup key bindings
  - Setup .tmux conf with different environments
- [ ] Setup Git
  - Setup global .gitignore
  - Setup global .gitconfig
- [ ] 
- [ ] 

### Mac Specific
### Linux Specific
### Windows Specific





# Terminal
Scripts and tricks to setup one terminal to rule them all...

### Add /usr/local/sbin to the path
Homebrew's sbin was not found in your PATH but you have installed
formulae that put executables in /usr/local/sbin.
Consider setting the PATH for example like so

  ```echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile```

** _Added in .zshrc_

### Enable Homebrew for multiuser use
```
sudo dseditgroup -o edit -a $(whoami) -t user admin
sudo dseditgroup -o edit -a $(whoami) -t user wheel
```

### Install Powerline Fonts
```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

### Install [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### Install [Oh-my-bash](https://github.com/ohmybash/oh-my-bash)
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"`

### Install [Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)
```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```


### Setup aliases
Create symbolic links for .bash_alias and .zsh_alias

In the .dotfiles directory there is *.alias* file. Since the bash and zsh both use
the same syntax to define aliases we can use the same file for both.

#### .zsh_alias
```
ln -s ~/.dotfiles/.alias ~/.zsh_alias 
echo "\nsource ~/.zsh_alias\n" >> ~/.zshrc
```

#### .bash_alias 
```
ln -s ~/.dotfiles/.alias ~/.bash_alias
echo "\nsource ~/.bash_alias\n" >> ~/.bashrc
```

### Set zsh theme
...

### Set bash theme
...

### iTerm2 font setup

- Go To **Preferences -> Profiles -> Colors** and select Solorized Dark
- Go To the **Text** tab select **Change font** browse and select _Roboto Mono for Powerline_ 14pt
>>>>>>> 34ca61a5ca9a162309e9c1b02a4f425baa8aa450

### iTerm2 Keys setup
To jump between words and start/end of lines in iTerm2 follow these steps:
```
iTerm2 -> Preferences (⌘ + ,)
Open the “Keys” tab
Add the following Global Shortcut Keys
Move cursor one word left

Keyboard Combination: ⌥ + ←
Action: Send Hex Code
Code: 0x1b 0x62
Move cursor one word right

Keyboard Combination: ⌥ + →
Action: Send Hex Code
Code: 0x1b 0x66
Move cursor to beginning of line

Keyboard Combination: ⌘ + ←
Action: Send Hex Code
Code: 0x01
Move cursor to end of line

Keyboard Combination: ⌘ + →
Action: Send Hex Code
Code: 0x05
Delete word

Keyboard Combination: ⌥ + ←Delete
Action: Send Hex Code
Code: 0x1b 0x08
Delete line

Keyboard Combination: ⌘ + ←Delete
Action: Send Hex Code
Code: 0x15
Undo

Keyboard Combination: ⌘ + z
Action: Send Hex Code
Code: 0x1f
Don't forget to remove the previous bindings:

Open the “Profiles” tab
Click the sub-tab ”Keys”
Remove the mappings for key combinations ⌥ + ← and ⌥ + →
```

### Setup Atom.io
#### Restore settings and packages

### Setup Sublime Text 3

### Setup NeoVim

### Setup **tmux**

### Setup OpenVPN
