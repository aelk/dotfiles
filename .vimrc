"Plugins"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

"YouCompleteMe"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0 " syntastic compatibility

"Appearance"
syntax on
set number
set cursorline
set visualbell
set guicursor=a:blinkon0
colors solarized
set bg=light
"colors cedar
"hi CursorLine guibg=darkblue
"hi Cursor guibg=Green

"Tabs"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

"Mappings"
imap jk <Esc>
nnoremap ; :

"Search"
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch

"Misc"
set ruler
set wildmenu
set autochdir
