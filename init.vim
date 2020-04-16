" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



let mapleader = " "
set number
syntax on
set nocursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
se incsearch
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2
set softtabstop=2

noremap <LEADER><CR> :nohlsearch<CR>

noremap = nzz
noremap - Nzz

noremap j h
noremap k j
noremap i k

noremap u i
noremap U u

map Q :q<CR>
map S :w<CR>
map R :source $MYVIMRC<CR>
map ; :

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

" change cursor position
map <LEADER>l <C-w>l
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j
map <LEADER>i <C-w>k

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()




" ===
" === snazzy
" ===
let g:SnazzyTransparent = 1
color snazzy
