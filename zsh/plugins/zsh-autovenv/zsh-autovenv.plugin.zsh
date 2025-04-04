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
    while [ "$current_dir" != "$HOME" ]; do
        if [ -d "$current_dir/.venv" ]; then
            source "$current_dir/.venv/bin/activate"
            env_name="$VIRTUAL_ENV"
            python_version=$(python --version 2>&1)
            echo -e "${GREEN}${ICON_ENV} Activating virtual environment: ${CYAN}$env_name${RESET}"
            echo -e "${BLUE}${ICON_PYTHON} Python version: ${CYAN}$python_version${RESET}"
            return 0
        fi
        current_dir=$(dirname "$current_dir")
    done
    if [ -n "$VIRTUAL_ENV" ]; then
        echo -e "${RED}${ICON_DEACTIVATE} Deactivating virtual environment: ${CYAN}$VIRTUAL_ENV${RESET}"
        deactivate
    fi
}


if [ -n "$TMUX" ]; then
    activate_venv
fi

autoload -U add-zsh-hook
add-zsh-hook chpwd activate_venv
