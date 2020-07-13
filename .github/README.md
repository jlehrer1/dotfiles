# Dotfiles
My configs, scripts, and functions. Commonly known as dotfiles!

These are personalized to my use, but hopefully there are some bits and pieces somewhere that are useful to you. Try digging around in `.custom/aliases` and `.custom/scripts/`. 

## I use:
[Terminal.app](https://support.apple.com/guide/terminal/welcome/mac) as my terminal. 
[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) to manage my zsh config.  
[yadm](https://github.com/TheLocehiliosan/yadm) to manage my dotfiles.  
[neovim](https://github.com/neovim/neovim) as my text editor (I admit, I still use VSCode for many things).

To install, run
```shell
brew install yadm
yadm clone https://github.com/jlehrer1/dotfiles
# restart the Terminal so that env variables can be accessed
exec zsh
# now run bootstrap
yadm bootstrap
```


