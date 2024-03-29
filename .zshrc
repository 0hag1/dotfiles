# zshrc

source-safe () { if [ -f "$1" ]; then source "$1"; fi }

#
# PATHs
#

source-safe "${HOME}/.zsh/path.sh"

#
# *envs
#

source-safe "${HOME}/.zsh/pyenv.sh"
source-safe "${HOME}/.zsh/rbenv.sh"
source-safe "${HOME}/.zsh/goenv.sh"
source-safe "${HOME}/.zsh/nodenv.sh"
source-safe "${HOME}/.zsh/tfenv.sh"

#
# aliases
#

source-safe "${HOME}/.zsh/alias.sh"

#
# prezto
#

source-safe "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

#
# secrets
#

source-safe "{HOME}/.secret.zsh"

#
# fzf
#

source-safe "${HOME}/.fzf.zsh"

#
# OS specific settings
#

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    source-safe "${HOME}/.zsh/linux.sh"

elif [[ "$OSTYPE" == "darwin"* ]]; then
    source-safe "${HOME}/.zsh/macos.sh"

else
    # Unknown
fi

#
# Auto load some functions
#

autoload -Uz promptinit
promptinit
prompt pure
