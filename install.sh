#!/usr/bin/env bash

echo "### Install Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "### Install Oh-my-bash"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

echo "### Install Nerd-Fonts"
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

echo "### Install atom.io"
brew cask install atom

# brew cask fonts
echo "Installing fonts..."
# clone
cd
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
cd ~/.dotfiles


echo "### Link .bashrc"
if [ -h ~/.bashrc ] 
then
	echo "deleting old .bashrc"
	rm -f ~/.bashrc
fi

ln -s ~/.dotfiles/.bashrc ~/.bashrc

echo "### Link .zshrc"
if [ -h ~/.zshrc ] 
then
	echo "deleting old .zshrc"
	rm -f ~/.zshrc
fi

ln -s ~/.dotfiles/.zshrc ~/.zshrc

echo "### Create aliases symlink"
if [ -h ~/.bash_alias ]
then 
	echo "deleting .bash_alias"
	rm -f ~/.bash_alias
fi 

ln -s ~/.dotfiles/.alias ~/.bash_alias

if [ -h ~/.zsh_alias ]
then
	echo "deleting .zsh_alias"
	rm -f ~/.zsh_alias
fi 

ln -s ~/.dotfiles/.alias ~/.zsh_alias

