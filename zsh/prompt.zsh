setopt transient_rprompt
setopt prompt_subst

preexec_save_cmd() {
  PREV_CMD=$1
}

precmd_blank_line() {
  if [[ -n $PREV_CMD ]]; then
    print -P ""
  fi
}

add-zsh-hook precmd vcs_info
add-zsh-hook preexec preexec_save_cmd
add-zsh-hook precmd precmd_blank_line

NEWLINE=$'\n'

PWD='%F{cyan} %~%f'
GIT_INFO='%F{green}${vcs_info_msg_0_}%f'
# PROMPT_CHAR='%B%F{red}>%F{yellow}>%F{green}>%f%b'
PROMPT_CHAR='%B%F{green}󰁕%f%b'
CONDA_ENV='%F{red} $(basename $CONDA_PREFIX)%f'
USER='%F{blue} %n%f'
NAME='%F{green} %m%f'
TIME='%B%F{yellow} %*%f%b'
LINEUP=$'\e[1A'
LINEDOWN=$'\e[1B'

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'
zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:git:*' formats '%F{green}󰊢 %b%f %F{yellow}%c%f%F{red}%u%f'
zstyle ':vcs_info:git:*' actionformats '%F{green}󰊢 %b|%a%f %F{yellow}%c%f%F{red}%u%f'


# PROMPT="${USER} ${CONDA_ENV} ${PWD} ${GIT_INFO} ${NEWLINE}${TIME}${PROMPT_CHAR} "


PROMPT="${PWD}  ${GIT_INFO}${NEWLINE}${PROMPT_CHAR} "
RPROMPT=%{${LINEUP}%}"${CONDA_ENV}  ${USER}  ${NAME}  ${TIME}"%{${LINEDOWN}%}
