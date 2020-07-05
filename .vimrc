
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

"Remove whitespace at end of lines
"autocmd BufWritePre * :%s/\s\+$//

"Wrap text to given number of characters
set tw=80

