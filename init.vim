" ===
" === Auto load for first time uses
" === Attention path！！
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ===
" === Editor behavior
" ===

syntax on
set number
set relativenumber
set nocursorline
set wrap
set showcmd
set wildmenu
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2
set softtabstop=2
set listchars=tab:»■,trail:■
set list

" ===
" === Basic Mappings
" ===
let mapleader = " "
noremap ; :

" Open the config file anytime
noremap <LEADER>v :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>z :e ~/.zshrc<CR>
noremap <LEADER>r :e ~/.config/ranger/rc.conf<CR>

" ===
" === Cursor Movement
" ===

" (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j

" H key: go to the start of the line
noremap <silent> H ^
" L key: go to the end of the line
noremap <silent> L $

" save & quit
map Q :q<CR>
map S :w<CR>
map R :source $MYVIMRC<CR>

" search
set hlsearch
set incsearch
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>
noremap = nzz
noremap - Nzz

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>
set shiftwidth=2
set autoindent

" ===
" === Window management
" ===

" Use <space> + new arrow keys for moving the cursor around windows
map <LEADER>w <C-w>w
map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k


" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" Disable the default `s` key
map s <nop>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H


" find and replace
noremap \s :%s//g<left><left>

call plug#begin('~/.config/nvim/plugged')
" Editor Enhancement
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdcommenter' " <space>cc comment a line; <space>c<space> toogle; <space>ci invert;
Plug 'tpope/vim-surround' " with the cursor on 'hello' press cs'` --> `hello` press ds' to remove
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'gcmt/wildfire.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" ===
" === snazzy
" ===
let g:SnazzyTransparent = 1
color snazzy

" ===
" === nerd commmenter
" ===
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default

" ===
" === FZF
" ===
noremap <C-p> :Files<CR>
