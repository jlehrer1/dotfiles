
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
# path to my dotfile repo, don't really need this while using yadm
export DOTSREPO="${PROJECTS}/System"
# path to my dotfiles
export DOTS="${HOME}/.custom"

# nice themes: {af-magic, wezm+}
ZSH_THEME="af-magic"

# plugins
plugins=(git)

source "${ZSH}/oh-my-zsh.sh"

# for weird OSX Catalina error
ZSH_DISABLE_COMPFIX=true

INC_APPEND_HISTORY=false
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('~/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${HOME}/opt/miniconda3/etc/profile.d/conda.sh" ]; then
		. "${HOME}/opt/miniconda3/etc/profile.d/conda.sh"  # commented out by conda initialize  # commented out by conda initialize
    else
		export PATH="${HOME}/opt/miniconda3/bin:$PATH"  # commented out by conda initialize  # commented out by conda initialize
    fi
fi
unset __conda_setup
# <<< conda initialize <<

# for conda autocomplete
fpath+=${ZDOTDIR}/opt/conda-zsh-completion
compinit

# colors for manpages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# for iStats (ruby gem)
export PATH="${HOME}/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# for dependency related to imagemagick
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

# fzf color theme
export FZF_DEFAULT_OPTS='
	--color fg:242,bg:233,hl:65,fg+:15,bg+:234,hl+:108
	--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

# for fuck library
eval
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }

# Add my scripts to path
export PATH="${SCRIPTS}:$PATH"

# source my aliases
source "${ALIASES}"
