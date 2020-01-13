#!/bin/bash

# Create .config folder
mkdir -p ~/.config


### OSX Only ###
## Install Apps
#brew cask install --force iterm2
#brew cask install --force alfred
#brew cask install --force  visual-studio-code
#brew cask install --force karabiner-elements
#brew cask install --force slate
#brew cask install --force divvy
#brew cask install --force spotify
#brew install zsh
#brew install tmux
#brew install kube-ps1
## Slate
#ln -svf ~/.dotfiles/slate/slate ~/.slate
## Karabiner
#ln -svf ~/.dotfiles/karabiner/private.xml ~/Library/Application\ Support/Karabiner/

#### Symlinks
# GIT
# ln -svf ~/.dotfiles/git/gitconfig ~/.gitconfig

# ZSH
# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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

# Karabiner
ln -s ~/.dotfiles/karabiner .

# VIM
unlink ~/.vim
ln -svf ~/.dotfiles/vim ~/.vim
ln -svf ~/.dotfiles/vim/vimrc ~/.vimrc
cp ~/.dotfiles/vim/vimpasswords ~/.vimpasswords

echo "Fill out your Vim Passwords in the ~/.vimpasswords file"
#vim -u ~/.vim/bundle.vim +PluginInstall +qall


## VSCode
ln -svf ~/.dotfiles/vscode/* ~/Library/Application\ Support/Code/User/.
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension aws-scripting-guy.cform
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension PeterJausovec.vscode-docker
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode.Go                                                                                  │~
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension redhat.vscode-yaml                                                                            │~
/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension vscodevim.vim
