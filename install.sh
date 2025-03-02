#!/bin/sh

rm -rf ~/.config/script
ln -sf $(pwd)/script ~/.config/script

rm -rf ~/.zshenv ~/.zshrc ~/.config/zsh
ln -sf $(pwd)/zsh ~/.config/zsh
ln -sf $(pwd)/zsh/zshenv ~/.zshenv
ln -sf $(pwd)/zsh/zshrc ~/.zshrc
./zsh/fzf/install

rm -rf ~/.config/nvim
ln -sf $(pwd)/nvim ~/.config/nvim

rm -rf ~/.tmux.conf
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
