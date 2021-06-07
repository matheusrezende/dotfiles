#!/bin/bash
# Load neovim configurations
#!/bin/bash
# Make sure to always clone at $HOME directory
# install applications
brew install neovim \
             zsh \
             zsh-completions \
             zsh-syntax-highlighting \
             zsh-history-substring-search \
             tmux \
             ack \
             the_silver_searcher \
             wget \
             cmake \
             fzf \
             watchman

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash


sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Create symlink to zshrc
rm -rf $HOME/.zshrc

ln -s ~/dotfiles/zshrc ~/.zshrc

# Tmuxinator completions for ZSH
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator

# Create symlink to tmux config
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# change zsh to default shell
chsh -s $(which zsh)

# change vim to nvim
ln -s /usr/local/bin/nvim /usr/local/bin/vim

# Load neovim configurations
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim

# Create symlink to tmux config
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

nvm install stable


