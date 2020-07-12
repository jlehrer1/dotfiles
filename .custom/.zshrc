  # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#   ______     ______     __  __     ______     ______    	#
#  /\___  \   /\  ___\   /\ \_\ \   /\  == \   /\  ___\   	#
#  \/_/  /__  \ \___  \  \ \  __ \  \ \  __<   \ \ \____  	#
#    /\_____\  \/\_____\  \ \_\ \_\  \ \_\ \_\  \ \_____\ 	#
#    \/_____/   \/_____/   \/_/\/_/   \/_/ /_/   \/_____/ 	#
#															#
  # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# path to my scripts / functions (working on converting to scripts)
export SCRIPTS="${ZDOTDIR}/scripts"

# path to my aliases
export ALIASES="${ZDOTDIR}/aliases"

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
plugins=(git alias-finder pip)

source "${ZSH}/oh-my-zsh.sh"

# for iStats (ruby gem)
export PATH="${HOME}/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# source my aliases
source "${ALIASES}"

# Add my scripts to path
export PATH="${SCRIPTS}:$PATH"
export PATH="${SCRIPTS}/social:$PATH"

# for dependency related to imagemagick
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

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

export PATH="${HOME}/.local/bin:$PATH"
