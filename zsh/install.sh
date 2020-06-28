# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# source this so ZDOTDIR is defined
source .zshenv
mkdir -p "${ZDOTDIR}"

echo "Moving files to HOME: $HOME"
cp .zshenv "${HOME}"
cp .vimrc "${HOME}"

echo "Moving files to ZDOTDIR: $ZDOTDIR"
cp .zshrc "${ZDOTDIR}"
cp .zsh_aliases "${ZDOTDIR}"
ditto .zsh_functions "${ZDOTDIR}/.zsh_functions/"

echo "Completed. Reloading shell..."
exec zsh

