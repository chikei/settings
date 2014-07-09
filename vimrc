set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
" cd ~/.vim/bundle/YouCompleteMe
" ./install.sh
Plugin 'marijnh/tern_for_vim'
" cd ~/.vim/bundle/tern_for_vim
" npm install
Plugin 'tomtom/tcomment_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'derekwyatt/vim-scala'
Plugin 'digitaltoad/vim-jade'
Plugin 'gkz/vim-ls'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
syntax on
set background=dark

set expandtab
set shiftwidth=2
set softtabstop=2

set autoread

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set encoding=utf8

set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set history=700

syntax enable

set number
set laststatus=2
set ruler
