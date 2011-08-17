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

set nobackup
set nowb
set noswapfile

" Horizontal scroll bar
set guioptions+=b

let g:path_to_search_app = "/usr/bin/ack-grep" 

" Do better syntax highlighting for twig templates
autocmd BufRead *.twig set syntax=htmljinja

" Remap the leader
let mapleader = ','

" Command-T
map <Leader>t :CommandT /var/www/opensky/src/OpenSky<CR>

" PHP specific commands
autocmd FileType php noremap <C-X> :w!<CR>:!/usr/bin/php -f %<CR>
autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>

" OpenSky Tags
set tags=~/.vim/tags

" UI {
    set number
    color wombat

    if has('cmdline_info')
        set ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
        set showcmd
    endif

    if has('statusline')
        set laststatus=2

        " Break down the status line
        set statusline=%<%f\    " Filename
        set statusline+=%w%h%m%r    " Options
        set statusline+=%{fugitive#statusline()} "  Git Hotness
        set statusline+=\ [%{&ff}/%Y]            " filetype
        set statusline+=\ [%{getcwd()}]          " current dir
        set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif
" }

" NerdTree {
    "autocmd VimEnter * NERDTree
    "autocmd BufEnter * NERDTreeMirror

    map <f5> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
    map <f6> :NERDTreeFind<CR>
    nmap <leader>nt :NERDTreeFind<CR>
    
    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
" }

" PDV
source ~/.vim/bundle/PDV/.vim/php-doc.vim
inoremap <C-P> :call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
" }
" Tabs {
    set showtabline=2
    "map <C-t><up> gT
    "map <C-t><down> gt
    "map <C-t><left> :tabp<CR>
    "map <C-t><right> :tabn<CR>
" }

" taglist {
    nnoremap <silent> <F8> :TlistToggle<CR>
"  }

" Formatting {
    set nowrap                     " wrap long lines
    set autoindent                 " indent at the same level of the previous line
    set shiftwidth=4               " use indents of 4 spaces
    set expandtab                  " tabs are spaces, not tabs
    set tabstop=4                  " an indentation every four columns
    set softtabstop=4              " let backspace delete indent
    set pastetoggle=<F12>          " pastetoggle (sane indentation on pastes)
" }

" Backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching brackets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" Automatically reload the .vimmrc when changed
autocmd BufWritePost .vimrc source %
