# install brew
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install my brew packages
xargs brew install < brew_packages.txt

# install rbenv for iStats, which is needed for my BetterTouchTool setup. Also safer 
# than installing anything into the system ruby
rbenv install 2.7.1
rbenv global 2.7.1


