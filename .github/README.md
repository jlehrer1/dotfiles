# Dotfiles
My configs, scripts, and functions for my MacOS setup.

These are personalized to my use, but hopefully there are some bits and pieces somewhere that are useful to you. Try digging around in `.custom/aliases` and `.custom/scripts/`. 

## I use:
[Terminal.app](https://support.apple.com/guide/terminal/welcome/mac) as my terminal.  
[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) to manage my zsh config.  
[tmux](https://github.com/tmux/tmux) as my terminal multiplexer.  
[yadm](https://github.com/TheLocehiliosan/yadm) to manage my dotfiles.  
[vim](https://github.com/vim/vim) as my text editor (although I admit I still use VSCode for many things), and  
[vim-plug](https://github.com/junegunn/vim-plug) to manage vim plugins.

To install, run
```shell
brew install yadm
yadm clone https://github.com/jlehrer1/dotfiles
# restart the Terminal so that env variables can be accessed
exec zsh
# now run bootstrap
yadm bootstrap
```


