# alias vi='nvim'
# alias vim='nvim'


alias proxy_up='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890'
alias proxy_down='unset all_proxy'
# alias ls='eza --color=always --icons --group-directories-first'
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
alias j='joshuto --output-file /tmp/joshutodir; LASTDIR=`cat /tmp/joshutodir`; cd "$LASTDIR"'
alias e='exit'
alias lg='lazygit'
alias diff='colordiff'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias cp='cp -i'
# alias rm='rm -i'
alias bat='bat --theme=gruvbox-dark'
alias tmux='tmux -u -2'
alias c='clear'
alias zz='zellij'
alias za='zellij a'

# alias p='paru'
# alias pu="paru -Syyu"
# alias pp="paru -Slq | fzf -m --height ${FZF_TMUX_HEIGHT:-60%} --reverse --multi --preview 'bat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro paru -S"
# alias pq="paru -Qq | fzf -m --height ${FZF_TMUX_HEIGHT:-60%} --reverse --multi --preview 'bat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro paru -Si"
# alias pr="paru -Qq | fzf -m --height ${FZF_TMUX_HEIGHT:-60%} --reverse --multi --preview 'bat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro paru -Rsn"

