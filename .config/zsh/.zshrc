  # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#   ______     ______     __  __     ______     ______    	#
#  /\___  \   /\  ___\   /\ \_\ \   /\  == \   /\  ___\   	#
#  \/_/  /__  \ \___  \  \ \  __ \  \ \  __<   \ \ \____  	#
#    /\_____\  \/\_____\  \ \_\ \_\  \ \_\ \_\  \ \_____\ 	#
#    \/_____/   \/_____/   \/_/\/_/   \/_/ /_/   \/_____/ 	#
#															#
  # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Path to my oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Path to my main dotfiles folder
export DOTS="${HOME}/.custom"

# path to my scripts / functions (working on converting to scripts)
export SCRIPTS="${DOTS}/scripts"

# path to my aliases
export ALIASES="${DOTS}/aliases"

# path to my projects folder
export PROJECTS="${HOME}/Documents/Projects"

# my default command line editor
export EDITOR="nvim"

# my default browser
# the $BROWSER variable cannot be used because it breaks jupyter notebooks with an esoteric error
export SEARCH="Safari"

# nice themes: {af-magic, wezm+, fletcherm, jreese, typewritten, vercel}
ZSH_THEME="af-magic"

# zsh plugins
plugins=(tmux)

source "${ZSH}/oh-my-zsh.sh"

# source my aliases
for f in $ALIASES/**/*(.); do source $f; done

# Add my scripts to path
export PATH="${SCRIPTS}:$PATH"

# and each subfolder in scripts/
for f in ${SCRIPTS}/*/; do export PATH="$f:$PATH"; done

# for dependency related to imagemagick
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

# for fixing Catalina error
ZSH_DISABLE_COMPFIX=true

# Conda setup
__conda_setup="$('/Users/julian/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/julian/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/julian/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/julian/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# for conda autocomplete
fpath+="${HOME}/opt/conda-zsh-completion"
compinit

export PATH="${HOME}/Library/Python/3.8/bin:$PATH"
export PATH="${HOME}/.local/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# for iStats (ruby gem)
export PATH="${HOME}/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
