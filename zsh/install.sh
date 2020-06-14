# install brew
if ! [ -x "$(zsh --version)" ]; then 
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi 

#install brew and flask packages
for i in $(cat ../brew_packages.txt); do; brew install "$i"; done
for i in $(cat ../cask_packages.txt); do; brew install "$i"; done

cp .zsh* ~/
