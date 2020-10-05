#!/bin/bash
# Make sure to always clone at $HOME directory
# install applications
brew install zsh \
             zsh-completions \
             zsh-syntax-highlighting \
             zsh-history-substring-search \
             tmux \
             ack \
             the_silver_searcher \
             wget \
             cmake \
             fzf \
	     tmuxinator \
             nvm \
             watchman


# change vim to nvim
ln -s /usr/local/bin/nvim /usr/local/bin/vim

# Installs vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# Load neovim configurations
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim

# installs Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

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

nvm install stable
