#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "${DOTPATH}"/install/util.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_pure() {
    declare -r PURE_DIR="${HOME}/.zprezto/modules/prompt/external/pure"
    declare -r PURE_URL="https://github.com/sindresorhus/pure.git"

    execute \
        "rm -rf ${PURE_DIR} \
            && git clone --quiet ${PURE_URL} ${PURE_DIR}" \
        "Clone to ${PURE_DIR}" \
        || return 1
}

main() {
    print_in_purple "\n   pure\n\n"
    install_pure
}

main
