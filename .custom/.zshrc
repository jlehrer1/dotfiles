
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
# path to my dotfiles
export DOTS="${HOME}/.custom"

# nice themes: {af-magic, wezm+, fletcherm, jreese}
ZSH_THEME="wezm+"

# plugins
plugins=(git)

source "${ZSH}/oh-my-zsh.sh"

# for iStats (ruby gem)
export PATH="${HOME}/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# for dependency related to imagemagick
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

# source my aliases
source "${ALIASES}"

# Add my scripts to path
export PATH="${SCRIPTS}:$PATH"

# source the misc color configs, etc
source "${ZDOTDIR}/preferences"

ZSH_DISABLE_COMPFIX=true

export PATH='${HOME}/opt/miniconda3/bin:$PATH'
