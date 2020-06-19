# install brew
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install my brew packages
xargs brew install < brew_packages.txt

# install rbenv for iStats, which is needed for my BetterTouchTool setup. Also safer 
# than installing anything into the system ruby
rbenv install 2.7.1
rbenv global 2.7.1

# should be in ~/../.shims/2.7.1 and NOT system
echo "This should not list the system ruby in /usr/bin/. If it does, check that rbenv is installed correctly and run rbenv global 2.7.1"
echo $(where gem)
echo $(where ruby) 

# install iStats, but not default packages. Check if there is a better way to do this
gem install iStats
