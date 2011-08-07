set nocompatible " must be first line
set background=dark

" Setup pathogen
call pathogen#infect()

syntax on " Syntax highlighting
filetype plugin indent on " Automatically detect file types
set mouse=a " Automatically enable mouse usage

scriptencoding utf-8
set history=1000 " Store more history
set spell

set backup

" UI {
    color wombat
" }

" Formatting {
    set nowrap                         " wrap long lines
    set autoindent                     " indent at the same level of the previous line
    set shiftwidth=4                   " use indents of 4 spaces
    set expandtab                        " tabs are spaces, not tabs
    set tabstop=4                     " an indentation every four columns
    set softtabstop=4                 " let backspace delete indent
    set pastetoggle=<F12>              " pastetoggle (sane indentation on pastes)
" }


" Automatically reload the .vimmrc when changed
autocmd BufWritePost .vimrc source %
