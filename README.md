# dotfiles
Dotfiles for tmux, zsh, bash etc. Linux and Mac
## Terminal
Scripts and tricks to setup one terminal to rule them all...

### Add /usr/local/sbin to the path
Homebrew's sbin was not found in your PATH but you have installed
formulae that put executables in /usr/local/sbin.
Consider setting the PATH for example like so
  `echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile`

### Enable Homebrew for multiuser use
```
sudo dseditgroup -o edit -a $(whoami) -t user admin
sudo dseditgroup -o edit -a $(whoami) -t user wheel
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
