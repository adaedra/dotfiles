let s:dotfiles = expand('<sfile>:p:h')
let &runtimepath .= ',' . s:dotfiles
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
set signcolumn=yes

set ttimeout
set ttimeoutlen=60

set termguicolors
let g:gruvbox_italicize_strings = 0
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_transp_bg = 1
colorscheme gruvbox8_hard

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

let g:fzf_layout = {
    \ 'window': {
        \ 'width': 0.9,
        \ 'height': 0.4,
        \ 'yoffset': 0.2,
        \ 'border': 'sharp',
        \ }
     \ }
let g:fzf_colors = {
    \ 'bg': ['bg', 'NormalMode'],
    \ 'bg+': ['bg', 'CursorLine'],
    \ 'fg+': ['fg', 'Normal'],
    \ 'border': ['fg', 'StatusLineNC'],
    \ 'prompt': ['fg', 'Identifier'],
    \ }

nnoremap <silent> ,, :call fzf#run(fzf#wrap({'source':'rg --files','options':['--inline-info','--preview=bat --color=always --theme=ansi --decorations=never -r :100 {}','--preview-window=right,50%,border-left','--prompt=» ','--pointer= ']}))<CR>
