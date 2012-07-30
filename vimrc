set nocompatible

call pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

set shell=/bin/bash

" file management
set nobackup                     " turn off automatic creation of backup files
set nowritebackup                " makes vim write buffer to file
set noswapfile                   " turn off swap files

colorscheme jellybeans

set number
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smartindent
set autoindent

set backspace=indent,eol,start

set ruler

" check to make sure vim has been compiled with colorcolumn support
" before enabling it
if exists("+colorcolumn")
	set colorcolumn=80
endif

set nowrap
set textwidth=79
set formatoptions=n

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" ---------------------------------------------------------------------------
"  Mappings
" ---------------------------------------------------------------------------

" use ctrol hjkl to move between split windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" turn search highlight off
nnoremap <leader><space> :noh<cr> 

" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

" EXTERNAL COPY / PASTE
" Press F2 before and after pasting from an external Window, not required for
" MacVim
set pastetoggle=<F2>
map <C-v> "+gP<CR>
vmap <C-c> "+y

" indent file and return cursor and center cursor
map   <silent> <F3> mmgg=G`m^zz
imap  <silent> <F3> <Esc> mmgg=G`m^zz

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------
" NERDTree
" open file browser
let g:NERDTreeWinSize = 40
map <leader>p :NERDTreeToggle<cr>

" Easy commenting
nnoremap // :TComment<CR>
noremap // :TComment<CR>

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'} 
let g:AutoCloseProtectedRegions = ["Character"] 

" Skip to Model, View or Controller
map <Leader>m :Rmodel 
map <Leader>v :Rview 
map <Leader>c :Rcontroller 

" Other files to consider Ruby
au BufRead,BufNewFile Gemfile,Rakefile,Thorfile,config.ru,Vagrantfile,Guardfile,Capfile set ft=ruby

" set these after everything or else it gets jacked
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smartindent
set autoindent
