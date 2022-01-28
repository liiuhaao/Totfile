export MANPAGER="nvim +Man!"
export PATH="$PATH:$HOME/Scripts:$HOME/.local/bin"
export EDITOR="nvim"
export TERMINAL="alacritty"
export READER="zathura"
export BROWSER="qutebrowser"
export MANPAGER="nvim +Man!"

export all_proxy=socks5://127.0.0.1:9050
export GOPROXY=https://goproxy.io/


export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--bind=tab:down,shift-tab:up,ctrl-t:toggle --reverse'
