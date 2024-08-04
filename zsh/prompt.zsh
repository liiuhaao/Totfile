setopt transient_rprompt
setopt prompt_subst


add-zsh-hook precmd vcs_info


precmd_conda_info() {
  if [[ -n $CONDA_PREFIX ]]; then
    CONDA_ENV="%F{yellow} $(basename $CONDA_PREFIX) %f"
  else
    CONDA_ENV=""
  fi
}
precmd_functions+=( precmd_conda_info )

# PROMPT='%(?.%B%F{red}>%F{yellow}>%F{green}>%f%b .%B%F{red}>%F{red}>%F{red}>%f%b) '
# PROMPT='%B%F{red}>%F{yellow}>%F{green}>%f%b '
# RPROMPT='${CONDA_ENV}${vcs_info_msg_0_}%F{purple}%~%f %F{cyan}%m%f'
NEWLINE=$'\n'
PROMPT='%F{cyan} %m %f${CONDA_ENV}${vcs_info_msg_0_}%F{purple}%~%f ${NEWLINE}%B%F{red}>%F{yellow}>%F{green}>%f%b '

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '●'
zstyle ':vcs_info:*' stagedstr '●'
zstyle ':vcs_info:git:*' formats       '%F{green}󰊢 %b%f %F{yellow}%c%f%F{red}%u%f '
zstyle ':vcs_info:git:*' actionformats '%F{green}󰊢 %b|%a%f %F{yellow}%c%f%F{red}%u%f '
