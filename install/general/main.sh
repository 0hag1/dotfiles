#!/bin/bash

main() {
    declare -r GENERAL_DIR="${DOTPATH}/install/general"

    bash "${GENERAL_DIR}"/powerline_font.sh
    # bash "${GENERAL_DIR}/fzf.sh"

    bash "${GENERAL_DIR}"/zplugin.sh
    bash "${GENERAL_DIR}"/prezto.sh

    bash "${GENERAL_DIR}"/pyenv.sh
    bash "${GENERAL_DIR}"/rbenv.sh
    bash "${GENERAL_DIR}"/goenv.sh

    # bash ${GENERAL_DIR}/spacemacs.sh
}

main