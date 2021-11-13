#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "${DOTPATH}"/install/util.sh \
    && . "${DOTPATH}"/install/macos/util.sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_awscli() {
    brew_install "awscli" "awscli"
}

main() {
    print_in_purple "\n   Install awscli\n\n"

    install_awscli
}

main
