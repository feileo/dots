" vvvvvvv           vvvvvvviiiiiii    mmmmmmm    mmmmmmm   rrrrr   rrrrrrrrr       cccccccccccccccc
" v:::::v         v:::::v i:::::i  mm:::::::m  m:::::::mm r::::rrr:::::::::r    cc:::::::::::::::c
"  v:::::v       v:::::v   i::::i m::::::::::mm::::::::::mr:::::::::::::::::r  c:::::::::::::::::c
"   v:::::v     v:::::v    i::::i m::::::::::::::::::::::mrr::::::rrrrr::::::rc:::::::cccccc:::::c
"    v:::::v   v:::::v     i::::i m:::::mmm::::::mmm:::::m r:::::r     r:::::rc::::::c     ccccccc
"     v:::::v v:::::v      i::::i m::::m   m::::m   m::::m r:::::r     rrrrrrrc:::::c
"      v:::::v:::::v       i::::i m::::m   m::::m   m::::m r:::::r            c:::::c
"       v:::::::::v        i::::i m::::m   m::::m   m::::m r:::::r            c::::::c     ccccccc
"        v:::::::v        i::::::im::::m   m::::m   m::::m r:::::r            c:::::::cccccc:::::c
"         v:::::v         i::::::im::::m   m::::m   m::::m r:::::r             c:::::::::::::::::c
"          v:::v          i::::::im::::m   m::::m   m::::m r:::::r              cc:::::::::::::::c
"           vvv           iiiiiiiimmmmmm   mmmmmm   mmmmmm rrrrrrr                cccccccccccccccc


"====================================================================
"  general
"====================================================================
set nocompatible                                " Be iMproved
set bs=2		                                " allow backspacing over everything in insert mode
set history=50		                            " keep 50 lines of command line history
set ruler		                                " show the cursor position all the time
set autoread		                            " auto read when file is changed from outside

filetype on
filetype plugin on
filetype plugin indent on

syntax enable                                   " syntax highlight
syntax on

set t_Co=256                                    " set 256 colors
" set mouse=a                                     " use mouse
set number                                      " show line numbers
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312,big5,latin1
set fencs=utf-8,gb2312,gbk                      " Sets the default encoding

set tabstop=4                                   " 4 whitespaces for tabs visual presentation
set shiftwidth=4                                " shift lines by 4 spaces
set softtabstop=4
set smarttab                                    " set tabs for a shifttabs logic
set expandtab                                   " expand tabs into spaces
set autoindent                                  " indent when moving to the next line while writing code
" set smartindent
" set cindent
set shiftround

set cursorline                                  " shows line under the cursor's line
set showmatch                                   " shows matching part of bracket pairs (), [], {}

set nobackup                                    " no backup files
set nowritebackup                               " only in case you don't want a backup file while editing
set noswapfile                                  " no swap files
set backspace=indent,eol,start                  " backspace removes all (indents, EOLs, start) What is start?
set whichwrap+=<,>,h,l
set scrolloff=8                                 " let 10 lines before/after cursor during scroll
set clipboard=unnamed                           " use system clipboard

set showcmd                                     " show input cmd
set exrc                                        " enable usage of additional .vimrc files from working directory
set secure                                      " prohibit .vimrc files to execute shell, create files, etc...
set textwidth=119
set lazyredraw

set splitbelow
set splitright

set switchbuf=useopen
set laststatus=2

set wildignore=*.o,*~,*.pyc                     " ignore compiled files

" Make the keyboard faaaaaaast
set ttyfast                                     " terminal acceleration
set timeout timeoutlen=1000 ttimeoutlen=50

set incsearch                                   " incremental search
set hlsearch                                    " highlight search results
" Enable highlighting when you enter a lookup command 
" noremap n :set hlsearch<cr>n
" noremap N :set hlsearch<cr>N
" noremap / :set hlsearch<cr>/
" noremap ? :set hlsearch<cr>?
" noremap * *:set hlsearch<cr>

" nnoremap <c-w>h :call DisableHighlight()<cr>
" function! DisableHighlight()
"     set nohlsearch
" endfunc

"====================================================================
" key mapping
"====================================================================
let mapleader="\<Space>"                        " my leader

set pastetoggle=<F3>                            " toggle paste

nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

" quick resize split
nnoremap ˙ <C-W><
nnoremap ¬ <C-W>>
nnoremap ∆ <C-W>+
nnoremap ˚ <C-W>-

inoremap jj <Esc>

inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>Q :q!<cr>
noremap <leader>y "+y<cr>

" search
nnoremap <Leader>s yiw:vimgrep /\C\<<C-R>0\>/ % <CR>:copen<CR>

" tabs, buffers
tab sball                                           
nmap <Leader><Tab> :bprev<CR>
nmap <Tab> :bnext<CR>

autocmd! BufWritePost ~/.vimrc source ~/.vimrc  " When vimrc is edited, reload it


"====================================================================
"  filetype
"====================================================================
augroup tab_set
    autocmd!
    autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp,go set ai
    autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp,go set sw=4
    autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp,go set ts=4
    autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp,go set sts=4
    autocmd FileType coffee,html,css,xml,jsx,javascript set ai
    autocmd FileType coffee,html,css,xml,jsx,javascript set sw=2
    autocmd FileType coffee,html,css,xml,jsx,javascript set ts=2
    autocmd FileType coffee,html,css,xml,jsx,javascript set sts=2
    autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=80 shiftwidth=2
    autocmd FileType json set softtabstop=2 tabstop=8
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END

" au FileType python set nocursorcolumn
" au FileType python syntax sync minlines=128
" au FileType python set synmaxcol=128
" au FileType python set re=1

if has("win32")
    set fileformats=dos,unix,mac
else
    set fileformats=unix,mac,dos
endif


"====================================================================
"  plugs
"====================================================================
call plug#begin('~/.vim/plugged')

    "--------------------- project --------------------------
    Plug 'scrooloose/nerdtree'                " Project and file navigation
    Plug 'majutsushi/tagbar'                  " Class/module browser
    Plug 'yggdroot/indentline'

    "--------------------- language ide -----------------------------
    Plug 'klen/python-mode', { 'branch': 'develop' }    " Python mode (docs, refactor, lints...)
    Plug 'Valloric/YouCompleteMe', {'tag': 'e018777'}   " Autocomplete
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    "--------------------- syntax highlighting ----------------------
    Plug 'vim-scripts/nginx.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'elzr/vim-json'
    Plug 'kylef/apiblueprint.vim'
    " Plug 'luochen1990/rainbow'               " Rainbow brackets
    
    "--------------------- efficiency tool --------------------------
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plug 'tpope/vim-commentary'               " Comment stuff out
    Plug 'easymotion/vim-easymotion'
    Plug 'lfv89/vim-interestingwords'

    "--------------------- lint, fixer ------------------------------
    Plug 'w0rp/ale'
    Plug 'Chiel92/vim-autoformat'
    Plug 'tell-k/vim-autopep8'

    "--------------------- search -----------------------------------
    Plug 'dyng/ctrlsf.vim'
    Plug 'kien/ctrlp.vim'                     " Fast transitions on project files
    Plug 'tacahiroy/ctrlp-funky'

    "--------------------- git --------------------------------------
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'        " Nerdtree git support

    "--------------------- schemes ----------------------------------
    Plug 'flazz/vim-colorschemes'             " Colorschemes
    Plug 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plug 'vim-airline/vim-airline-themes'     " Themes for airline
    Plug 'Lokaltog/powerline'                 " Powerline fonts plugin

    "--------------------- front-end --------------------------------
    Plug 'mitsuhiko/vim-sparkup'              " sparkup(XML/jinja/htlm-django/etc.) support
    Plug 'mattn/emmet-vim'
    Plug 'othree/html5.vim'
    Plug 'ap/vim-css-color'
    " Plug 'pangloss/vim-javascript'
    " Plug 'mxw/vim-jsx'
    " Plug 'maksimr/js-beautify'

    "--------------------- input ------------------------------------
    Plug 'ybian/smartim'

    "--------------------- other ------------------------------------
    Plug 'mhinz/vim-startify'

call plug#end()

source ~/.vimplugs.conf                                 " load plug config

colorscheme wombat256mod                                " set color scheme
