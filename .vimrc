set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set backspace=indent,eol,start
set cursorline
set number
set incsearch
set nocompatible              " be iMproved, required
set clipboard=unnamedplus
set lazyredraw

syntax enable
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Vundle
" Show git branch
Plugin 'preservim/nerdtree'
" Nerdtree
Plugin 'ajh17/vimcompletesme'
" Vimcompletesme
Plugin 'raimondi/delimitmate'
" delimitmate
Plugin 'rhysd/vim-color-spring-night'
" Colorscheme
Plugin 'christoomey/vim-tmux-navigator'
" tmux movements
Plugin 'vim-airline/vim-airline'
" Airline
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
colorscheme spring-night
set background=dark
" Airline Settings
let g:airline_theme = 'spring_night'

" custom keybinds
"---------------
set conceallevel=1
set laststatus=2
