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
set cursorline

set ttimeout
set ttimeoutlen=60

set termguicolors
let g:gruvbox_italicize_strings = 0
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_transp_bg = 1
colorscheme gruvbox8_hard
