# Only run if not run before!
rm ~/.gitconfig
rm ~/.oh-my-zsh
rm ~/.config/nvim
rm ~/.config/i3

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
ln -s ~/.dotfiles/.config/i3 ~/.config/i3
