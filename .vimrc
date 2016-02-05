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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
call vundle#end()

let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }

"YouCompleteMe"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0 " syntastic compatibility

" http://stackoverflow.com/a/22253548/5870049
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"Appearance"
syntax on
set number
set visualbell
set guicursor=a:blinkon0
set cursorline

if has("gui_running")
    colors peachpuff
    "hi CursorLine guibg=darkblue
    "hi Cursor guibg=Green
else
    hi CursorLine term=bold cterm=bold
endif

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

" http://vi.stackexchange.com/a/456
fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun

command! TrimWhitespace call TrimWhitespace()
