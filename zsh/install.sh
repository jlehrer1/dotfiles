# install brew
if ! [ -x "$(zsh --version)" ]; then 
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi 

#install brew and flask packages
brew install $(cat ../brew_packages.txt)
brew install $(cat ../cask_packages.txt)

cp .zsh* ~/
