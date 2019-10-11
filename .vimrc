" syntax on
"required for vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set shell=/usr/bin/zsh

" vundle plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'dylanaraps/wal.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat' "for vim surround
" Languages
Plugin 'rust-lang/rust.vim'
call vundle#end()

" basic configuration
colorscheme wal
set number
set relativenumber
set spell
filetype plugin indent on " required for vundle
set ic
set tabstop=8
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nobackup
set noswapfile
set t_Co=256 
set splitright
set splitbelow
set omnifunc=syntaxcomplete#Complete
" Search highlight color
hi Search cterm=NONE ctermfg=grey ctermbg=green

" Code Folding
set foldmethod=indent
set nofoldenable

" Mapping
let mapleader=" " " use space bar as leader
"NERDtree toggle
map <leader>a :NERDTreeToggle <CR>
"ctrlP plugin
nmap <leader>o :CtrlP <CR>
"add new tab 
nmap <leader>t :tabnew <CR>
"cycling tabs
nmap <tab> :tabnext <CR>
" cannot use j and k in wrapped lines (for example in long latex lines)
map j gj
map k gk
" indent whole file
nmap <leader>f gg=G

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move lines
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

" NERDTree split
let NERDTreeMapPreviewVSplit='v'
let NERDTreeMapPreviewSplit='h'

" airline configuration
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
" set tabsize for html files
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType eruby setlocal ts=2 sts=2 sw=2
