set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'kaicataldo/material.vim'
Plugin 'cormacrelf/vim-colors-github'
Plugin 'vim-python/python-syntax'
Plugin 'mattn/emmet-vim'

call vundle#end()

syntax on

" Esquema de color para vim
" =============================================================
" Configuración para color de esquema material.
colorscheme github 
""let g:github_colors_soft = 1

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511

if (has('termguicolors'))
  set termguicolors
endif

" ==============================================================

filetype plugin indent on

" Configuración para usar PEP8

au BufNewFile,BufRead *.py
    \ set tabstop=4 | " Ancho en espacios de un tab.
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 | " El ancho por línea de código.
    \ set expandtab | " convierte tab en espacios.
    \ set autoindent | " Indentar automáticamente.
    \ set fileformat=unix

" Mostrar número de línea
set number

" Muestra líena debajo del cursor.
set cursorline

" Muestra la pareja de [] {} y ()
set showmatch

" Activa python highlight
let python_highlight_all = 1

" Tamaño por defecto del terminal
set termwinsize=10x0

" encoding
set encoding=utf-8

" Configurando <leader> shortcut
let mapleader = ","

" Keymaps
" =====================================
" Abrir NerdTree
map <C-n> :NERDTreeToggle<CR>

" Abrir terminal
map <F2> :belowright terminal<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Saltar al final de la línea
inoremap <C-e> <C-o>$

" =====================================
