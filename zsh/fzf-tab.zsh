### completion ###
# init completion
autoload -U compinit && compinit

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'

# cd
zstyle ':fzf-tab:complete:(cd|ls|eza):*' fzf-preview 'eza --color=always --icons --group-directories-first -l $realpath'
zstyle ':fzf-tab:complete:(cd|ls|eza):*' fzf-flags --height=50% --preview-window=right:wrap

# ls zstyle ':fzf-tab:complete:ls:*' fzf-preview 'less ${(Q)realpath}'

# brew
zstyle ':fzf-tab:complete:brew-(install|uninstall|search|info):*-argument-rest' fzf-preview 'HOMEBREW_COLOR=true brew info ${word}'

# tldr
zstyle ':fzf-tab:complete:tldr:argument-1' fzf-preview 'tldr --color always $word'

# kill ps
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview \
  '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags '--preview-window=down:3:wrap'

# git
zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview \
    'git diff $word'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview \
    'git log --color=always $word'
zstyle ':fzf-tab:complete:git-help:*' fzf-preview \
    'git help $word | bat -plman --color=always'
zstyle ':fzf-tab:complete:git-show:*' fzf-preview \
    'case "$group" in
    "commit tag") git show --color=always $word ;;
    *) git show --color=always $word;;
    esac'
zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
    'case "$group" in
    "modified file") git diff $word;;
    "recent commit object name") git show --color=always $word;;
    *) git log --color=always $word ;;
    esac'
