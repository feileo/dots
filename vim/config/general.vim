"*************************************************************************************************
" (Neo)Vim General Settings
"
"*************************************************************************************************


set bs=2                                                " allow backspacing over everything in insert mode
set history=100                                         " keep 50 lines of command line history
set ruler                                               " show the cursor position all the time
set autoread                                            " auto read when file is changed from outside
set t_Co=256                                            " set 256 colors
" set mouse=a                                             " use mouse
set formatoptions=tcqronj                               " set vims text formatting options
set showmatch                                           " shows matching part of bracket pairs (), [], {}
set matchtime=1
set autoread                                            " reload file if the file changes on the disk
set cursorline                                          " shows line under the cursor's line
set nobackup                                            " no backup files
set nowritebackup                                       " only in case you don't want a backup file while editing
set noswapfile                                          " no swap files
set modeline
set modelines=10
set clipboard=unnamed                                   " use system clipboard
set guioptions+=a
set exrc                                                " enable usage of additional .vimrc files from working directory
set secure                                              " prohibit .vimrc files to execute shell, create files, etc...
"set ambiwidth=double
set ttyfast                                             " terminal acceleration, Make the keyboard faaaaaaast
set lazyredraw
set report=0
set errorbells
set visualbell
set hidden
set fileformats=unix,mac,dos
set magic
set synmaxcol=2500

if has('vim_starting')
  set encoding=utf-8
  set fileencodings=utf-8,gbk,gb2312
  set fencs=utf-8,gb2312,gbk
  scriptencoding utf-8
endif

if has('wildmenu')
  if ! has('nvim')
    set wildmode=list:longest
  endif

  set wildignorecase
  set wildcharm=<C-z>                                   " substitue for 'wildchar' (<Tab>) in macros
endif

" Tabs and Indents
set textwidth=120                                        " Text width maximum chars before wrapping
set tabstop=4                                            " The number of spaces a tab is
set shiftwidth=4                                         " Number of spaces to use in auto(indent)
set softtabstop=-1                                       " Automatically keeps in sync with shiftwidth
set smarttab                                             " Tab insert blanks according to 'shiftwidth'
set expandtab                                            " Expand tabs into spaces
set autoindent                                           " Use same indenting on new lines
" set smartindent                                        " Smart autoindenting on new lines
" set shiftround                                         " Round indent to multiple of 'shiftwidth'

" Timing
set timeout ttimeout
set timeoutlen=800                                      " Time out on mappings
set ttimeoutlen=30                                      " Time out on key codes
set updatetime=100                                      " default updatetime 4000ms is not good for async update
set redrawtime=1500                                     " Time in milliseconds for stopping display redraw

" Searching
set ignorecase                                          " Search ignoring case
set smartcase                                           " Keep case when searching with *
set infercase                                           " Adjust case in insert completion mode
set hlsearch                                            " highlight search results
set incsearch                                           " Incremental search
set wrapscan                                            " Searches wrap around the end of the file

if has('nvim')
    set inccommand=split                                " enables interactive search and replace
endif

" Behavior
set nowrap                                              " No wrap by default
set nostartofline                                       " Cursor in same column for few commands
set whichwrap+=h,l,<,>,[,],~                            " Move to following line on certain keys
set splitbelow splitright                               " Splits open bottom right
set switchbuf=useopen,vsplit                            " Jump to the first open window
set backspace=indent,eol,start                          " Intuitive backspacing in insert mode
set diffopt=filler,iwhite                               " Diff mode: show fillers, ignore whitespace
set completeopt=menu,menuone                            " Always show menu, even for one item
if exists('+completepopup')
  set completeopt+=popup
  set completepopup=height:4,width:60,highlight:InfoPopup
endif
if has('patch-7.4.775')
  " Do not insert any text for a match until the user selects from menu
   set completeopt+=noinsert
endif
if has('patch-8.1.0360') || has('nvim-0.4')
  set diffopt+=internal,algorithm:patience
  " set diffopt=indent-heuristic,algorithm:patience
endif

" Editor UI
set noshowmode          " Don't show mode in cmd window
set shortmess=aoOTIc    " Shorten messages and don't show intro
set scrolloff=8         " Keep at least 8 lines above/below
set sidescrolloff=5     " Keep at least 5 lines left/right
set number              " Don't show line numbers
set noruler             " Disable default status ruler
" set list                " Show hidden characters

set showtabline=2       " Always show the tabs line
set winwidth=30         " Minimum width for active window
set winminwidth=10      " Minimum width for inactive windows
" set winheight=4         " Minimum height for active window
set winminheight=1      " Minimum height for inactive window
set pumheight=20        " Pop-up menu's line height
set helpheight=12       " Minimum help window height
set previewheight=12    " Completion preview height

set showcmd             " Show command in status line
set cmdheight=1         " Height of the command line
set cmdwinheight=5      " Command-line lines
" set noequalalways       " Don't resize windows on split or close
set laststatus=2        " Always show a status line

if has('folding') && has('vim_starting')
  set foldenable
  set foldmethod=indent
  set foldlevelstart=99
endif

" if has('nvim-0.4')
"   set signcolumn=yes:1
" elseif has("patch-8.1.1564")
"   set signcolumn=number
" else
"   set signcolumn=no
" endif


if has("persistent_undo")
  set undodir=$UNDO_PATH
  set undofile
endif

set wildignore=*.o,*~,*.pyc,*.a                         " ignore compiled files
set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
set wildignore+=application/vendor/**,**/vendor/ckeditor/**,media/vendor/**
set wildignore+=__pycache__,*.egg-info,.pytest_cache,.mypy_cache/**


" vim: set foldmethod=marker ts=2 sw=2 tw=80 list noet :
