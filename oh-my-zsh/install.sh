#!/bin/bash

# Installing ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change default shell to ZSH for current user
sudo usermod --shell $(which zsh) $(whoami)

# Add custom plugins for:
# 	Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#	Zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#	Fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# Add aliases
grep -qxF 'alias zshconfig="vim ~/.zshrc"' ~/.zshrc || echo 'alias zshconfig="vim ~/.zshrc"' >> ~/.zshrc
grep -qxF 'alias ls="ls --color=auto"' ~/.zshrc || echo 'alias ls="ls --color=auto"' >> ~/.zshrc
grep -qxF 'alias cdhome="cd ~"' ~/.zshrc || echo 'alias cdhome="cd ~"' >> ~/.zshrc
grep -qxF 'alias vi="vim"' ~/.zshrc || echo 'alias vi="vim"' >> ~/.zshrc
grep -qxF 'alias ports="netstat -tulanp"' ~/.zshrc || echo 'alias ports="netstat -tulanp"' >> ~/.zshrc
