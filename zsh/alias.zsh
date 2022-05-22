# alias vi='nvim'
# alias vim='nvim'


alias proxy_up='export all_proxy=socks5://127.0.0.1:9050'
alias proxy_down='unset all_proxy'
alias ls='exa --icons --group-directories-first'
# alias ls='ls --color'
alias l='ls'
alias lt='ls --tree'
alias lat='ls -a --tree'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias v='nvim'
alias r='. ranger'
alias e='exit'
alias lg='lazygit'
alias diff='colordiff'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias cp='cp -i'
# alias rm='rm -i'
alias bat='bat --theme=gruvbox-dark'
alias tmux='tmux -u -2'


# alias g='git'
# alias gp='git pull --prune'
# alias gg="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
# alias gP='git push origin HEAD' alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
# alias gc='git commit'
# alias gca='git commit -a'
# alias go='git checkout'
# alias gb='git branch'
# alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
# alias gac='git add -A && git commit -m'
# alias ge='git-edit-new'


alias p='paru'
alias pu="paru -Syyu"
alias pp="paru -Slq | fzf -m --height ${FZF_TMUX_HEIGHT:-60%} --reverse --multi --preview 'bat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro paru -S"
alias pq="paru -Qq | fzf -m --height ${FZF_TMUX_HEIGHT:-60%} --reverse --multi --preview 'bat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro paru -Si"
alias pr="paru -Qq | fzf -m --height ${FZF_TMUX_HEIGHT:-60%} --reverse --multi --preview 'bat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro paru -Rsn"

