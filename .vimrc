" # # # # # # # # # # # # # # # # # # # # # #
"  _    __   ____   __  ___   ____    ______	#
" | |  / /  /  _/  /  |/  /  / __ \  / ____/	#
" | | / /   / /   / /|_/ /  / /_/ / / /     	#
" | |/ /  _/ /   / /  / /  / _, _/ / /___   	#
" |___/  /___/  /_/  /_/  /_/ |_|  \____/   	#
" # # # # # # # # # # # # # # # # # # # # # #

" A place for all of my vim settings

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

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

