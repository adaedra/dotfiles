let s:dotfiles = expand('<sfile>:p:h')
let &packpath .= ',' . s:dotfiles

set nocompatible

filetype plugin indent on
syntax on

set tabstop=8
set shiftwidth=4
set softtabstop=-1 " use shiftwidth
set expandtab
set autoindent
set smartindent
set nosmarttab

set scrolloff=5

set ttimeout
set ttimeoutlen=60
