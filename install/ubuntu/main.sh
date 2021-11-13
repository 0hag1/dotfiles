#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "${DOTPATH}"/install/util.sh \
    && . "${DOTPATH}"/install/ubuntu/util.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    declare -r UBUNTU_DIR="${DOTPATH}/install/ubuntu"

    # General requirements
    bash "${DOTPATH}"/install/general/main.sh

    bash "${UBUNTU_DIR}"/misc.sh

    bash "${UBUNTU_DIR}"/zsh.sh
    bash "${UBUNTU_DIR}"/tmux.sh

    bash "${UBUNTU_DIR}"/pyenv_requirements.sh
    bash "${UBUNTU_DIR}"/rbenv_requirements.sh
}

main
