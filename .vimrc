
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------- basic configurations --------
"set numberlines
set nu
set relativenumber
"copy paste ctr p ctr c
vnoremap <C-c> "+y
map <C-p> "+p

syntax on
"set tab to be = to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"--------- Plugin Configurations --------
"lightline config
let g:lightline = {
    \ 'colorscheme': 'seoul256'
    \ }
set laststatus=2
set noshowmode

"nerdtree config
map <C-o> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"
