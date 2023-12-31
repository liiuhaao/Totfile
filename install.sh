#!/bin/sh

rm -rf ~/.zshenv ~/.zprofile ~/.zshrc ~/.config/zsh
ln -sf $(pwd)/zsh ~/.config/zsh
ln -sf $(pwd)/zsh/zshenv ~/.zshenv
ln -sf $(pwd)/zsh/zprofile ~/.zprofile
ln -sf $(pwd)/zsh/zshrc ~/.zshrc
./zsh/fzf/install

rm -rf ~/.config/nvim
ln -sf $(pwd)/nvim ~/.config/nvim

rm -rf ~/.config/joshuto
ln -sf $(pwd)/joshuto ~/.config/joshuto

rm -rf ~/.config/zellij
ln -sf $(pwd)/zellij ~/.config/zellij
