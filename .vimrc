" Vim configuration
" This is the personal Vim configuration of Brien Smith-Martinez
" file: .vimrc
"----------------------------------------------------------------

" be vim, not vi
set nocompatible

" Vundle Set up
"----------------------------------------------------------------
filetype off    " required by Vundle
" Vundle
" Install Vundle - taken from erikzaadi
    let iCanHazVundle=1
    let vundle_readme=expand("~/.vim/bundle/vundle/README.md")
    if !filereadable(vundle_readme)
        echo "Installing Vundle..."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
" Installed Vundle.

" github bundles:
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on   "required by Vundle
"or
"filetype plugin on         "to not use the indentation settings set by plugins
"------------------------------------------------
"General options. Organized the same as :options
"------------------------------------

"1 important
"------------------------------------

" be vim, not vi
set nocompatible
filetype off

"2 moving around, searching, patterns
"------------------------------------


"3 tags
"------------------------------------


"4 displaying text
"------------------------------------

set number

"5 syntax, highlighting, and spelling
"------------------------------------
" Enable syntax highlighting
syntax enable

set background=dark
colorscheme jellybeans
"6 multiple windows
"------------------------------------

"7 multiple tab pages
"------------------------------------

"8 terminal
"------------------------------------

"9 using the mouse
"------------------------------------

"10 printing
"------------------------------------

"11 messages and info
"------------------------------------

"12 selecting text
"------------------------------------

"13 editing text
"------------------------------------

"14 tabs and indenting
"------------------------------------

set tabstop=4
set shiftwidth=4
set expandtab

"15 folding
"------------------------------------

"16 diff mode
"------------------------------------

"17 mapping
"------------------------------------

"18 reading and writing files
"------------------------------------

"19 the swap file
"------------------------------------

"20 command line editing
"------------------------------------

"21 executing external commands
"------------------------------------

"22 running make and jumping to errors
"------------------------------------

"23 language specific
"------------------------------------

"24 multi-byte characters
"------------------------------------

set encoding=utf-8

"25 various
"------------------------------------
