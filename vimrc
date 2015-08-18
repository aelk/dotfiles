"Appearance"
syntax on
set visualbell

"Tabs"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set autoindent

"Mappings"
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
imap <C-BS> <C-W>
noremap <C-t> <Esc>:tabnew<CR>
noremap <C-o> <Esc>:browse confirm e<CR>
imap jk <Esc>
nnoremap ; :
noremap <silent><F2> :set spell!<CR>

"Search"
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch

"Misc"
cd ~/Desktop
set ruler
set wildmenu
set autochdir

