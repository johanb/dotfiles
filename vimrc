set nocompatible                  " Must come first because it changes other options.

filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set history=1000
set undolevels=1000

set noswapfile										" No swap needed
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.


set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set hidden                        " Handle multiple buffers better.
set nowrap

set encoding=utf-8                " Default encoding: UTF-8
set shiftwidth=2									" Spaces not tabs: size 2
set tabstop=2											" Global tab width.
set expandtab											" Use spaces instead of tabs

set autoindent
set copyindent

set number												" Show line numbers.
set numberwidth=5									"	Give the line numbers some more room
set ruler													" Show cursor position.
set shiftround

set showmatch
set showmode                      " Display the mode you're in.
set ignorecase
set smartcase
set smarttab

" Let's leave the mouse on for now to not completely kill my productivity
" while I get the hang of VIM
set mouse=a

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P


set background=dark
colorscheme solarized             " Use the dark Solarized theme


nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace before writing buffer to file
