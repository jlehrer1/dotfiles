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
export EDITOR="vim"

# my default browser
export SEARCH="Firefox" 

# Path for go packages 
export GOPATH="$HOME/go"

# Path for jupyter config
export jupyter_config="${HOME}/.config/jupyter/jupyter_notebook_config.py"

export ZSH_THEME="test"

source "${ZSH}/oh-my-zsh.sh"

# source my custom path
source "${DOTS}/path"

# source my aliases
source "${DOTS}/aliases"

# for dependency related to imagemagick
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

# for fixing Catalina error
ZSH_DISABLE_COMPFIX=true

eval "$(rbenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
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

