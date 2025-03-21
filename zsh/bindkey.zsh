zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

bindkey '^b' vi-backward-char
bindkey '^f' vi-forward-char
bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^h' backward-delete-char
bindkey '^d' delete-char
bindkey '^w' backward-kill-word
bindkey '^[f' forward-word
bindkey '^u' kill-whole-line
bindkey '^r' history-incremental-search-backward
bindkey '^s' history-incremental-search-forward
bindkey '^t' transpose-chars

bindkey -s '^[d' 'tmux attach || tmux\n'
# bindkey -s '^[ ' 'tmux attach || tmux\n'

