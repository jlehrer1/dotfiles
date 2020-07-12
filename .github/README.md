# Dotfiles
My configs, scripts, and functions. Commonly known as dotfiles!

## I use:
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


