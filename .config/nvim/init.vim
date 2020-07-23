" # # # # # # # # # # # # # # # # # # # # # #
"  _    __   ____   __  ___   ____    ______	#
" | |  / /  /  _/  /  |/  /  / __ \  / ____/	#
" | | / /   / /   / /|_/ /  / /_/ / / /     	#
" | |/ /  _/ /   / /  / /  / _, _/ / /___   	#
" |___/  /___/  /_/  /_/  /_/ |_|  \____/   	#
" # # # # # # # # # # # # # # # # # # # # # #

" A place for all of my neovim settings

"Sets tabs to 4 instead of 8 spaces"
set ts=4 sw=4

"Syntax highlighting"
syntax on

"Shows matching brackets"
set showmatch

"Always shows location in file (line#)"
set ruler

"Autotabs for certain code"
set smarttab

"Show line numbers"
set number

" Dont highlight parenthesis
let g:loaded_matchparen=1

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Function to trim whitespace, can be called with :TrimWhitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()

" Disable arrow keys in non-insert mode
" And force myself to use the home row
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" auto-install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Put list of plugins in between these two
call plug#begin('~/.config/nvim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/goyo.vim'

call plug#end()

" Automatically install missing plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

