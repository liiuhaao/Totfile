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

# Determine the system icon based on OS type
if [[ "$OSTYPE" == "darwin"* ]]; then
    SYS_ICON=''  # macOS
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    SYS_ICON=''  # Linux
elif [[ "$OSTYPE" == "cygwin" ]]; then
    SYS_ICON=''  # Windows (Cygwin)
elif [[ "$OSTYPE" == "msys" ]]; then
    SYS_ICON=''  # Windows (MSYS2)
else
    SYS_ICON=''  # Default
fi

# PWD='%F{cyan} %~%f'
PWD='%F{cyan}${SYS_ICON} %~%f'
GIT_INFO='  %F{green}${vcs_info_msg_0_}%f'
# PROMPT_CHAR='%B%F{red}>%F{yellow}>%F{green}>%f%b '
PROMPT_CHAR='%B%F{green}󰁕%f%b '
# PROMPT_CHAR='%B%F{%(?.green.red)}󰁕%f%b '

# NAME='%F{blue}[%m]%f'
NAME='%F{blue}(%m)%f'
TIME='%F{yellow}󱑏 %*%f'
LINEUP=$'\e[1A'
LINEDOWN=$'\e[1B'

export VIRTUAL_ENV_DISABLE_PROMPT=1
function VENV_INFO() {
    [[ -n $VIRTUAL_ENV_PROMPT ]] && echo "%F{red}${VIRTUAL_ENV_PROMPT} %f"
}

if command -v conda &> /dev/null; then
    conda config --set changeps1 false
fi
function CONDA_INFO() {
    [[ -n $CONDA_PREFIX ]] && echo "%F{red}($(basename $CONDA_PREFIX))  %f"
}
function TMUX_INFO() {
    [[ -n $TMUX ]] && echo "%F{magenta}($(tmux display-message -p '#S'))  %f"
}

TOP_LEFT="${PWD}${GIT_INFO}"
TOP_RIGHT="\$(TMUX_INFO)\$(VENV_INFO)\$(CONDA_INFO)${NAME}"
BOTTOM_LEFT="${PROMPT_CHAR}"

PROMPT="${TOP_LEFT}${NEW_LINE}${BOTTOM_LEFT}"
RPROMPT=%{${LINEUP}%}${TOP_RIGHT}%{${LINEDOWN}%}

TRANSIENT_PROMPT="${TIME} ${PWD} ${PROMPT_CHAR}$"

zle -N zle-line-finish transient_prompt
function transient_prompt {
    zle && PROMPT=$TRANSIENT_PROMPT RPROMPT= zle reset-prompt && zle -R
}


preexec() {
  start_time=$(date +%s)
}
precmd() {
    command_status=$?
    if [[ -n "$start_time" ]]; then
        end_time=$(date +%s)
        elapsed=$(( end_time - start_time ))
        formatted_date=$(date "+%Y-%m-%d %H:%M:%S")
        if [[ $command_status -eq 0 ]]; then
            # print -P "%B%F{green}Success ✓%f    %F{black}«Ended: ${formatted_date}    Elapsed time: ${elapsed} seconds»%f%b"
            print -P "%B%F{black}«Success ✓    Ended: ${formatted_date}    Elapsed time: ${elapsed} seconds»%f%b"
        else
            # print -P "%B%F{red}Error ✗%f    %F{black}«Ended: ${formatted_date}    Elapsed time: ${elapsed} seconds»%f%b"
            print -P "%B%F{black}«Error ✗    Ended: ${formatted_date}    Elapsed time: ${elapsed} seconds»%f%b"
        fi
    fi
}
