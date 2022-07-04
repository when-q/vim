set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set backspace=indent,eol,start
set number
set incsearch
set nocompatible              " be iMproved, required
set clipboard=unnamedplus

syntax enable
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Vundle
Plugin 'itchyny/vim-gitbranch'
" Show git branch
Plugin 'preservim/nerdtree'
" Nerdtree
Plugin 'ajh17/vimcompletesme'
" Vimcompletesme
Plugin 'raimondi/delimitmate'
" delimitmate
Plugin 'itchyny/lightline.vim'
" lightline theme
Plugin 'srcery-colors/srcery-vim'
" Colorscheme

call vundle#end()            " required
filetype plugin indent on    " required

" completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType vim let b:vcm_tab_complete = 'omni'

"------------------------
" NerdTree settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize = 25

"---------------------------
"Color schemes here
colorscheme srcery
set background=dark

" custom keybinds
"---------------
set conceallevel=1
"lightline
let g:lightline = {
	  \ 'colorscheme' : 'selenized_dark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
set laststatus=2

"Julia Support
