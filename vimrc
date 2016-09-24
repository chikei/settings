set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplete.vim'

" Plugin 'Valloric/YouCompleteMe'
" cd ~/.vim/bundle/YouCompleteMe
" ./install.sh
Plugin 'marijnh/tern_for_vim'
" cd ~/.vim/bundle/tern_for_vim
" npm install
Plugin 'tomtom/tcomment_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-markdown'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'derekwyatt/vim-scala'
Plugin 'digitaltoad/vim-jade'
Plugin 'gkz/vim-ls'
Plugin 'mileszs/ack.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'vimwiki/vimwiki'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'kien/ctrlp.vim'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'JuliaLang/julia-vim'
Plugin 'jlanzarotta/bufexplorer'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

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

" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set rnu
set number
set laststatus=2
set ruler
set showmatch
set mat=2

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:airline_theme="base16_solarized"

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Key mapping to stop the search highlight
nmap <silent> <F2>      :nohlsearch<CR>
imap <silent> <F2> <C-O>:nohlsearch<CR>

nmap <silent> <F7> :NERDTreeToggle<CR>
" mapping esc to easier key
inoremap jj <Esc>

" stripspace thanks to git
map <Leader>s :%!git stripspace<CR>

" GHC
au BufEnter *.hs compiler ghc

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" force .md to markdown instread of Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" improve startup time by disable X clipboard
set clipboard=exclude:.*
