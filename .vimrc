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
Plugin 'morhetz/gruvbox'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'junegunn/vim-easy-align'
call vundle#end()

" merlin -- use \t or :MerlinTypeOf while cursor is on function
" https://github.com/the-lambda-church/merlin/wiki/vim-from-scratch#with-opam
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"


"Syntastic"
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }
let g:syntastic_ocaml_checkers = ['merlin']

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

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"Appearance"
set guifont=Menlo\ Regular:h12
set bg=dark
colors gruvbox
syntax on
set visualbell
set cursorline

if has("gui_running")
  set guicursor=a:blinkon0
  set guioptions-=r
  set guioptions-=L
else
  hi CursorLine term=bold cterm=bold
endif

"Tabs"
autocmd Filetype c setlocal ts=8 sw=8 sts=8
autocmd Filetype cpp,ocaml setlocal ts=2 sw=2 sts=2
autocmd Filetype python,shell,matlab,tex setlocal ts=4 sw=4 sts=4
set expandtab
set autoindent
set smartindent

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
set scrolloff=5

" http://vi.stackexchange.com/a/456
fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun

command! TrimWhitespace call TrimWhitespace()

fun! Tex()
    w
    !pdflatex %
endfun

command! Tex call Tex()
