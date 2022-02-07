setopt transient_rprompt
setopt prompt_subst


add-zsh-hook precmd vcs_info


precmd_conda_info() {
  if [[ -n $CONDA_PREFIX ]]; then
    CONDA_ENV="%F{#d5c4a1} $(basename $CONDA_PREFIX) %f"
  else
    CONDA_ENV=""
  fi
}
precmd_functions+=( precmd_conda_info )


PROMPT='%(?.%B%F{#fb4934}>%F{#fabd2f}>%F{#b8bb26}>%f%b .%B%F{#fb4934}>%F{#fb4934}>%F{#fb4934}>%f%b '
RPROMPT='${CONDA_ENV}${vcs_info_msg_0_}%F{#d5c4a1}%~%f'


zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '●'
zstyle ':vcs_info:*' stagedstr '●'
zstyle ':vcs_info:git:*' formats       '%F{#d5c4a1} %b%f %F{#b8bb26}%c%f%F{#fb4934}%u%f '
zstyle ':vcs_info:git:*' actionformats '%F{#d5c4a1} %b|%a%f %F{#b8bb26}%c%f%F{#fb4934}%u%f '
