#!/bin/sh

rm -rf ~/.config/nvim
ln -sf $(pwd)/nvim ~/.config/nvim

rm -rf ~/.config/ranger
ln -sf $(pwd)/ranger ~/.config/ranger

rm -rf ~/.config/joshuto
ln -sf $(pwd)/joshuto ~/.config/joshuto

rm -rf ~/.zshenv ~/.zprofile ~/.zshrc ~/.config/zsh
ln -sf $(pwd)/zsh ~/.config/zsh
ln -sf $(pwd)/zsh/zshenv ~/.zshenv
ln -sf $(pwd)/zsh/zprofile ~/.zprofile
ln -sf $(pwd)/zsh/zshrc ~/.zshrc
./zsh/fzf/install

rm -rf ~/.config/zellij
ln -sf $(pwd)/zellij ~/.config/zellij
