# alias vi='nvim'
# alias vim='nvim'
alias ls='lsd --group-directories-first'
# alias ls='ls --color'
alias l='ls'
alias lt='ls --tree'
alias lat='ls -a --tree'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias v='nvim'
# alias r='. ranger'
alias e='exit'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias cp='cp -i'
# alias rm='rm -i'
alias bat='bat --theme=gruvbox-dark'
alias tmux='tmux -u -2'
alias c='clear'
alias zz='zellij'
alias za='zellij a'
alias y='yazi'

alias gcc='gcc-13'
alias cc='gcc-13'
alias g++='g++-13'
alias c++='c++-13'

function yy() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
alias y='yy'
