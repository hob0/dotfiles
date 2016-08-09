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
set cursorline
let mapleader=","

inoremap <Esc> <nop>
inoremap jj <Esc>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
vnoremap <leader>c :w !pbcopy<CR><CR>
nnoremap ; :
nnoremap L $
nnoremap H ^
" vim-markdown-folding
nnoremap <Space> za
nnoremap <C-m> zMzv

" hexediting
nmap <Leader>hh :%!xxd<CR>
nmap <Leader>hb :%!xxd -r<CR>
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
" set spell check for markdown files
autocmd FileType markdown set spell
set spell spelllang=en_us

set backspace=2 " make backspace work like most other apps
