execute pathogen#infect()

syntax on
colorscheme badwolf

filetype plugin indent on
set smartindent
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nu

let mapleader=","

inoremap <Esc> <nop>
inoremap jj <Esc>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>sv :so $MYVIMRC<CR>

" NERDTree
nmap <Leader>nt :NERDTreeToggle<CR>

" Two space tab for html
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2 softtabstop=2


