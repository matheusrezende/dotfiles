#!/bin/bash
# Load neovim configurations
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim


# Create symlink to zshrc
rm -rf $HOME/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc
source ~/.zshrc

# Tmuxinator completions for ZSH
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator

# Create symlink to tmux config
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# change zsh to default shell
chsh -s $(which zsh)

