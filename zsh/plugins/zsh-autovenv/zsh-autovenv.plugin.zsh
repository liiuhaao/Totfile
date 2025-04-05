GREEN="\033[0;32m"
BLUE="\033[0;34m"
RED="\033[0;31m"
CYAN="\033[0;36m"
RESET="\033[0m"

ICON_ENV="🔧"
ICON_PYTHON="🐍"
ICON_DEACTIVATE="🍂"

function activate_venv {
    current_dir="$PWD"
    while [ "$current_dir" != "/" ]; do
        if [ -d "$current_dir/.venv" ]; then
            OLD_VIRTURAL_ENV_PROMPT="$VIRTUAL_ENV_PROMPT"
            source "$current_dir/.venv/bin/activate"
            if [[ "$VIRTUAL_ENV_PROMPT" != "$OLD_VIRTURAL_ENV_PROMPT" ]]; then
                env_name="$VIRTUAL_ENV"
                python_version=$(python --version 2>&1)
                echo -e "${GREEN}${ICON_ENV} Activating virtual environment: ${CYAN}$env_name${RESET}"
                echo -e "${BLUE}${ICON_PYTHON} Python version: ${CYAN}$python_version${RESET}"
            fi
            return 0
        fi
        current_dir=$(dirname "$current_dir")
    done
    if [ -n "$VIRTUAL_ENV" ]; then
        echo -e "${RED}${ICON_DEACTIVATE} Deactivating virtual environment: ${CYAN}$VIRTUAL_ENV${RESET}"
        deactivate
    fi
}

autoload -U add-zsh-hook
# add-zsh-hook chpwd activate_venv
add-zsh-hook precmd venv_hook
function venv_hook {
    if [[ -z "$AUTOVENV_HOOK_INIT" ]]; then
        AUTOVENV_HOOK_INIT=1
        activate_venv > /dev/null 2>&1
    elif [[ "$PWD" != "$OLD_PWD" ]]; then
        OLD_PWD="$PWD"
        activate_venv
    fi
}

