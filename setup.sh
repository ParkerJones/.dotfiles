#!/bin/bash


echo "This will remove existing dot files/directories and create new symlinks:"

# List files to be replaced
echo "~/.gitconfig"
echo "~/.config/nvim"
echo "~/.config/i3"
echo "~/.zshrc"

read -p "Are you sure? [y/n]: " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
	echo "Proceeding..."

	# Remove files
	[ -e ~/.gitconfig ] && rm -rf ~/.gitconfig
	[ -e ~/.config/nvim ] && rm -rf ~/.config/nvim
	[ -e ~/.config/i3 ] && rm -rf ~/.config/i3
	[ -e ~/.zshrc ] && rm -rf ~/.zshrc

	# Create symlinks
	ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
	ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
	ln -s ~/.dotfiles/.config/i3 ~/.config/i3
	ln -s ~/.dotfiles/.zshrc ~/.zshrc

	echo "Done!"
else
	echo "Operation canceled."
fi
