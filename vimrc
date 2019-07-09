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


"=================================================================================================
"  Plugin management
"
"  Download vim-plug from the URL below and follow the installation
"  instructions:
"  https://github.com/junegunn/vim-plug
"=================================================================================================
call plug#begin('~/.vim/plugged')

    " Language Core
    Plug 'klen/python-mode', { 'branch': 'develop' }    " Python mode (docs, refactor, lints...)
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " Go mode
    Plug 'Valloric/YouCompleteMe'                       " Great autocomplete plug

    " Project
    Plug 'scrooloose/nerdtree'                          " Project and file navigation
    Plug 'majutsushi/tagbar'                            " Class/module browser

    " Syntax Highlighting
    Plug 'vim-scripts/nginx.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'elzr/vim-json'
    Plug 'kylef/apiblueprint.vim'
    " Plug 'luochen1990/rainbow'                        " Rainbow brackets

    " Efficiency tool
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'                           " Parentheses, brackets, quotes, XML tags, and more
    Plug 'tpope/vim-commentary'                         " Comment stuff out
    Plug 'easymotion/vim-easymotion'
    Plug 'lfv89/vim-interestingwords'
    Plug 'yggdroot/indentline'

    " Lint and Fixer
    Plug 'w0rp/ale'
    Plug 'Chiel92/vim-autoformat'
    Plug 'tell-k/vim-autopep8'

    " Search
    Plug 'kien/ctrlp.vim'                               " Fast transitions on project files
    Plug 'dyng/ctrlsf.vim'
    Plug 'tacahiroy/ctrlp-funky'

    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'                  " Nerdtree git support

    " Schemes
    Plug 'flazz/vim-colorschemes'                       " Colorschemes
    Plug 'bling/vim-airline'                            " Lean & mean status/tabline for vim
    Plug 'vim-airline/vim-airline-themes'               " Themes for airline
    Plug 'Lokaltog/vim-powerline'                       " Powerline fonts plugin

    " Front-end
    Plug 'mitsuhiko/vim-sparkup'                        " sparkup(XML/jinja/htlm-django/etc.) support
    Plug 'mattn/emmet-vim'
    Plug 'othree/html5.vim'
    Plug 'ap/vim-css-color'
    " Plug 'pangloss/vim-javascript'
    " Plug 'mxw/vim-jsx'
    " Plug 'maksimr/js-beautify'

    " Input
    Plug 'ybian/smartim'

    " Other
    Plug 'mhinz/vim-startify'
    Plug 'godlygeek/tabular'                            " This must come before plasticboy/vim-markdown
    Plug 'plasticboy/vim-markdown'                      " Markdown syntax highlighting
    Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
    Plug 'guns/xterm-color-table.vim'

call plug#end()


"=================================================================================================
"  General settings
"=================================================================================================
filetype on
filetype plugin on
filetype plugin indent on
syntax enable                                           " syntax highlight
syntax on
set nocompatible                                        " Be iMproved
set bs=2                                                " allow backspacing over everything in insert mode
set history=50                                          " keep 50 lines of command line history
set ruler                                               " show the cursor position all the time
set autoread                                            " auto read when file is changed from outside
set t_Co=256                                            " set 256 colors
" set mouse=a                                             " use mouse
set number                                              " show line numbers
" set relativenumber                                    " show relative numbers in the ruler
set encoding=utf-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8
set fileencodings=utf-8,gbk,gb2312,big5,latin1
set fencs=utf-8,gb2312,gbk                              " Sets the default encoding
set formatoptions=tcqronj                               " set vims text formatting options
set tabstop=4                                           " 4 whitespaces for tabs visual presentation
set shiftwidth=4                                        " shift lines by 4 spaces
set softtabstop=4
set smarttab                                            " set tabs for a shifttabs logic
set expandtab                                           " expand tabs into spaces
set autoindent                                          " indent when moving to the next line while writing code
set smartindent
" set cindent
set shiftround
set autoread                                            " reload file if the file changes on the disk
set cursorline                                          " shows line under the cursor's line
set showmatch                                           " shows matching part of bracket pairs (), [], {}
set nobackup                                            " no backup files
set nowritebackup                                       " only in case you don't want a backup file while editing
set noswapfile                                          " no swap files
set backspace=indent,eol,start                          " backspace removes all (indents, EOLs, start) What is start?
set whichwrap+=<,>,h,l
set scrolloff=8                                         " let 8 lines before/after cursor during scroll
set clipboard=unnamed                                   " use system clipboard
set showcmd                                             " show input cmd
set exrc                                                " enable usage of additional .vimrc files from working directory
set secure                                              " prohibit .vimrc files to execute shell, create files, etc...
" set textwidth=119
set lazyredraw
set foldlevelstart=99
" set foldmethod=syntax
set switchbuf=useopen
set laststatus=2
set wildignore=*.o,*~,*.pyc,*.a                         " ignore compiled files
" Make the keyboard faaaaaaast
set ttyfast                                             " terminal acceleration
set timeout timeoutlen=1000 ttimeoutlen=50

autocmd! BufWritePost ~/.vimrc source ~/.vimrc          " When vimrc is edited, reload it


"=================================================================================================
"  Mappings
"=================================================================================================
let mapleader="\<Space>"                                " my leader


"=================================================================================================
"  Color Scheme
"=================================================================================================
"if (has("nvim"))
"  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
" if (has("termguicolors"))
"   set termguicolors
" endif

colorscheme wombat256mod                                " set color scheme


"=================================================================================================
"  Modes
"=================================================================================================
set pastetoggle=<F3>                                    " toggle paste

inoremap jj <Esc>

inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>Q :q!<cr>
noremap <leader>y "+y<cr>


"=================================================================================================
" Searching (/, ?)
"=================================================================================================
set incsearch                                           " incremental search
set hlsearch                                            " highlight search results

if has('nvim')
    set inccommand=split                                " enables interactive search and replace
endif

" Clear search highlights

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Enable highlighting when you enter a lookup command
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
" noremap / :set hlsearch<cr>/
" noremap ? :set hlsearch<cr>?
" noremap * *:set hlsearch<cr>
" nnoremap <c-w>h :call DisableHighlight()<cr>
" function! DisableHighlight()
"     set nohlsearch
" endfunc

nmap <leader>c :noh<cr>
hi Search ctermfg=255 ctermbg=32 cterm=none guifg=#99CCFF guibg=#636066 gui=none

" word
nnoremap <leader>s yiw:vimgrep /\C\<<C-R>0\>/ % <CR>:copen<CR>


"=================================================================================================
" Navigation (tabs, buffers and windows)
"=================================================================================================
"windows
set splitbelow
set splitright

nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" tabs
" tab sball
set showtabline=1
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>9 :tabclose<cr>

" buffers
nmap <Tab> :bnext<cr>
nnoremap <leader>0 :bdelete<cr>
" nmap <Tab> :bprev<cr>


"=================================================================================================
"  FileType
"=================================================================================================
augroup tab_set
    au!
    au FileType php,python,c,cpp,java,perl,shell,bash,vim,ruby,go,apiblueprint set autoindent
    au FileType php,python,c,cpp,java,perl,shell,bash,vim,ruby,go,apiblueprint set expandtab
    au FileType php,python,c,cpp,java,perl,shell,bash,vim,ruby,go,apiblueprint set shiftwidth=4
    au FileType php,python,c,cpp,java,perl,shell,bash,vim,ruby,go,apiblueprint set softtabstop=4
    au FileType php,python,c,cpp,java,perl,shell,bash,vim,ruby,go,apiblueprint set tabstop=4
    au FileType coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift set autoindent
    au FileType coffee,html,css,xml,,javascript,fish,gitconfig,less,proto,sql,thrift set expandtab
    au FileType coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift set shiftwidth=2
    au FileType coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift set softtabstop=2
    au FileType coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift set tabstop=2
    au FileType python set nocursorcolumn
    au FileType python syntax sync minlines=200
    au FileType python set synmaxcol=128
    au FileType python set re=1
    au FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
    au FileType json set autoindent
    au FileType json set formatoptions=tcq2l
    au FileType json set textwidth=80 shiftwidth=2
    au FileType json set softtabstop=2 tabstop=8
    au FileType json set expandtab
    au FileType gitcommit setlocal textwidth=80
    au FileType markdown set expandtab
    au FileType markdown set shiftwidth=4
    au FileType markdown set softtabstop=4
    au FileType markdown set tabstop=4
    au FileType markdown set syntax=markdown
augroup END

if has("win32")
    set fileformats=dos,unix,mac
else
    set fileformats=unix,mac,dos
endif


"=================================================================================================
"  Other
"=================================================================================================
noremap <leader>rr bdw


"=================================================================================================
"  Plugins Settings
"=================================================================================================
source $HOME/.optimus/vplugs.conf.vim                   " load plug config
