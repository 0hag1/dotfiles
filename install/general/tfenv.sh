#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "${DOTPATH}"/install/util.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_tfenv() {
    declare -r TFENV_DIR="${HOME}/.tfenv"
    declare -r TFENV_URL="https://github.com/tfutils/tfenv.git"

    execute \
        "rm -rf ${TFENV_DIR} \
            && git clone --quiet ${TFENV_URL} ${TFENV_DIR}" \
        "Install to ${TFENV_DIR}" \
        || return 1
}

main() {
    print_in_purple "\n   tfenv\n\n"

    install_tfenv
}

main
