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

" vim-markdown-folding
nnoremap <Space> za
nnoremap <C-m> zMzv

nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>sv :so $MYVIMRC<CR>
nmap <Leader>td :e ~/TODO.mkd<CR>
nmap <Leader>es :e ~/.zshrc<CR>
nmap <Leader>tt :e /tmp/t
" auto-format JSON
nmap <Leader>json :%!python -m json.tool<CR>
" delete trailing whitespace
nmap <Leader>ws :%s/\s\+$//<CR>

" NERDTree
nmap <Leader>nt :NERDTreeToggle<CR>

" Two space tab for html
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2 softtabstop=2