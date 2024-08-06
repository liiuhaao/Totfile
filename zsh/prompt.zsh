setopt transient_rprompt
setopt prompt_subst

add-zsh-hook precmd vcs_info

# precmd() { precmd() { echo } }

zstyle ':vcs_info:*' check-for-changes true
# zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'
# zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}✗%f'
zstyle ':vcs_info:*' stagedstr '%F{green}✓%f'
zstyle ':vcs_info:*' actionstr '%F{yellow}󱐋%f'
zstyle ':vcs_info:*' conflictstr '%F{magenta}✖%f'
zstyle ':vcs_info:git:*' formats '%F{blue}󰊢 %b%f %c%u  '
zstyle ':vcs_info:git:*' actionformats '%F{blue}󰊢 %b|%a%f %c%u  '

NEW_LINE=$'\n'

PWD='%F{cyan} %~%f'
GIT_INFO='%F{green}${vcs_info_msg_0_}%f'
PROMPT_CHAR='%B%F{red}>%F{yellow}>%F{green}>%f%b '
PROMPT_CHAR='%B%F{green}󰁕%f%b '
PROMPT_CHAR='%B%F{%(?.green.red)}󰁕%f%b '

# CONDA_ENV='%F{red} ($(basename $CONDA_PREFIX))%f  '
# NAME='%F{blue} %m%f  '
CONDA_ENV='%F{red}[$(basename $CONDA_PREFIX)]%f '
NAME='%F{blue}[%m]%f '
TIME='%F{yellow}󱑏 %*%f'
LINEUP=$'\e[1A'
LINEDOWN=$'\e[1B'

TOP_LEFT="${PWD}  ${GIT_INFO}"
TOP_RIGHT="${CONDA_ENV} ${NAME}"
BOTTOWN_LEFT="${PROMPT_CHAR}"
#
PROMPT="${TOP_LEFT}${NEW_LINE}${BOTTOWN_LEFT}"
RPROMPT=%{${LINEUP}%}${TOP_RIGHT}%{${LINEDOWN}%}

TRANSIENT_PROMPT="${TIME} ${PWD} ${PROMPT_CHAR}"
zle -N zle-line-finish transient_prompt
function transient_prompt {
    zle && PROMPT=$TRANSIENT_PROMPT RPROMPT= zle reset-prompt && zle -R
}
