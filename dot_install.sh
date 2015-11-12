#!/bin/bash

# Create .config folder
mkdir -p ~/.config

# Symlinks
# GIT
ln -svf ~/.dotfiles/git/gitconfig ~/.gitconfig

# ZSH
ln -svf ~/.dotfiles/zsh/zshrc ~/.zshrc

# TMUX
ln -svf ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
unlink ~/.tmux
ln -svf ~/.dotfiles/tmux/ ~/.tmux
mkdir -p ~/.tmux/plugins
# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Install Plugins
~/.tmux/plugins/tpm/bin/install_plugins

# Powerline
unlink ~/.config/powerline
ln -svf ~/.dotfiles/powerline ~/.config/powerline

# VIM
unlink ~/.vim
ln -svf ~/.dotfiles/vim ~/.vim
ln -svf ~/.dotfiles/vim/vimrc ~/.vimrc
#vim -u ~/.vim/bundle.vim +PluginInstall +qall

### OSX Only ###
# Slate
ln -svf ~/.dotfiles/slate/slate ~/.slate

# Karabiner
ln -svf ~/.dotfiles/karabiner/private.xml ~/Library/Application\ Support/Karabiner/
