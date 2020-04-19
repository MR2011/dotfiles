filetype off
set shell=$SHELL

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' "for vim surround
Plug 'michaeljsmith/vim-indent-object'
Plug 'dense-analysis/ale'
call plug#end()

" basic configuration
colorscheme wal
set number
set relativenumber
set ic
set hidden
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
" Disable comment on new line
autocmd FileType * set formatoptions-=cro


" Code Folding
set foldmethod=indent
set nofoldenable

" Mapping
let mapleader=" " " use space bar as leader
"ctrlP plugin
nmap <leader>o :CtrlP <CR>
" netrw file manager
nmap <leader>e :Explore <CR>
"add new tab 
nmap <leader>t :tabnew <CR>
"cycling tabs
nmap <S-tab> :tabnext <CR>
"cycling buffers
nmap <tab> :bnext <CR>
" cannot use j and k in wrapped lines (for example in long latex lines)
map j gj
map k gk
" indent whole file
nmap <leader>f gg=G
" Toggle 80 character limit column
noremap <leader>8 :execute "set cc=" . (&cc == "" ? "80" : "")<CR>

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

" CTRLP
set g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" netrw file manager
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" ALE
let g:ale_linters = {
\    'python': ['flake8'],
\}

let g:ale_fixers = {
\   'python': ['black'],
\   'rust': ['rustfmt'],
\}

let g:ale_python_black_options = '--line-length 79'
" Run linters only on file save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" airline configuration
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1

let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
" set tabsize for html files
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType eruby setlocal ts=2 sts=2 sw=2
