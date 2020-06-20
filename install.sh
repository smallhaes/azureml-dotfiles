#!/bin/sh
ZSH=~/.oh-my-zsh

if [ -d "$ZSH" ]; then
	echo "Oh My Zsh is already installed. Skipping.."
else
	echo "Installing Oh My Zsh..."
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo "Installing zsh-autosuggestions..."
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	echo "Installing zsh-syntax-highlighting..."
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	echo "copy .zshrc"
	cp oh-my-zsh/zshrc ~/.zshrc
fi
