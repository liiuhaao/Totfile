zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
