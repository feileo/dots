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

" Be iMproved
set nocompatible 

"=====================================================
"  Plug settings
"=====================================================
filetype off
call plug#begin('~/.vim/plugged')

    "-------------------=== Syntax & highlighting ===--------------------
    Plug 'vim-scripts/nginx.vim'
    Plug 'elzr/vim-json'
    Plug 'kylef/apiblueprint.vim'
    Plug 'leafgarland/typescript-vim'

    " Rainbow brackets, I think it’s too fancy, I don’t use it.
    " Plug 'luochen1990/rainbow' 

    Plug 'lfv89/vim-interestingwords'

    "-------------------=== fixer ===--------------------
    Plug 'w0rp/ale'


    "-------------------=== search ===-----------------------------
    Plug 'dyng/ctrlsf.vim'
    Plug 'kien/ctrlp.vim'                     " Fast transitions on project files
    Plug 'tacahiroy/ctrlp-funky'


    "-------------------=== quick editing ===-----------------------------
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plug 'tpope/vim-commentary'               " Comment stuff out
    Plug 'easymotion/vim-easymotion'


    "-------------------=== python & YCM ===-----------------------------
    Plug 'klen/python-mode', { 'branch': 'develop' }    " Python mode (docs, refactor, lints...)
    Plug 'Valloric/YouCompleteMe'  " {'tag': 'e018777'}   Autocomplete plugin 
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    "-------------------=== Git  ===-----------------------------
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'


    "-------------------=== auto fix & formater ===-----------------------------
    Plug 'Chiel92/vim-autoformat'
    Plug 'tell-k/vim-autopep8'


    "-------------------=== front end ===---------------------------------------
    Plug 'mattn/emmet-vim'
    Plug 'othree/html5.vim'
    Plug 'ap/vim-css-color'
    Plug 'mitsuhiko/vim-sparkup'    " Sparkup(XML/jinja/htlm-django/etc.) support
    " Plug 'pangloss/vim-javascript'
    " Plug 'mxw/vim-jsx'
    " Plug 'maksimr/js-beautify'
    

    "-------------------=== Code/Project navigation ===-------------
    Plug 'scrooloose/nerdtree'                " Project and file navigation
    Plug 'Xuyuanp/nerdtree-git-plugin'        " Nerdtree git support
    Plug 'majutsushi/tagbar'                  " Class/module browser
    Plug 'yggdroot/indentline'


    "-------------------=== schemes ===-------------------
    Plug 'flazz/vim-colorschemes'             " Colorschemes
    Plug 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plug 'vim-airline/vim-airline-themes'     " Themes for airline
    Plug 'Lokaltog/powerline'                 " Powerline fonts plugin


    "-------------------=== Other ===-------------------------------
    Plug 'mhinz/vim-startify'

call plug#end()


"=====================================================
" vim general settings
"=====================================================
" When vimrc is edited, reload it
autocmd! BufWritePost ~/.vimrc source ~/.vimrc

filetype on
filetype plugin on
filetype plugin indent on

syntax enable                               " syntax highlight
syntax on

set t_Co=256                                " set 256 colors
colorscheme wombat256mod                    " set color scheme

" set mouse=a
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312,big5,latin1
set fencs=utf-8,gb2312,gbk                  " Sets the default encoding
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set softtabstop=4
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set shiftround
set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}
set nobackup                                " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile                              " no swap files
set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?
set whichwrap+=<,>,h,l
set scrolloff=10                            " let 10 lines before/after cursor during scroll
set clipboard=unnamed                       " use system clipboard
set showcmd
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...
set textwidth=119
set lazyredraw
set incsearch                               " incremental search
set hlsearch                                " highlight search results
set wildignore=*.o,*~,*.pyc                 " ignore compiled files

let mapleader="\<Space>"

set pastetoggle=<F3>                        " toggle paste

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

if has("win32")
    set fileformats=dos,unix,mac
else
    set fileformats=unix,mac,dos
endif

" Basic key binding
set splitbelow
set splitright
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


"=====================================================
" Base search settings
"=====================================================
nnoremap <Leader>s yiw:vimgrep /\C\<<C-R>0\>/ % <CR>:copen<CR>


"=====================================================
"  Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
nmap <Leader><Tab> :bprev<CR>
nmap <Tab> :bnext<CR>


"=====================================================
"  AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1                " 开启 tabline
let g:airline#extensions#tabline#buffer_nr_show = 1         " 显示 buffer编号
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#left_sep ="🙄"             " tabline 中当前 buffer 两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = "🤔"        " tabline 中未激活 buffer 两端的分隔字符
let g:airline_left_sep = '▶'                                " unicode symbols
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'


"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=1
let g:tagbar_width=35
autocmd BufWinLeave *.py :TagbarClose
map <Leader>* :TagbarToggle <CR>
let g:tagbar_autopreview = 0                                " 关闭自动预览
let g:tagbar_sort = 0                                       " 关闭排序,即按标签本身在文件中的位置排序


"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeShowHidden=0                                    " 是否显示隐藏文件
let NERDTreeMinimalUI=0                                   " NERDTree 子窗口中是否显示冗余帮助信息
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp','__pycache__','\.git$','\.DS_Store']
let NERDTreeWinSize=30
nmap " :NERDTreeToggle<CR>
nmap < :NERDTreeFind<cr>
let g:NERDTreeShowLineNumbers=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"=====================================================
"" NERDTree git settings
"=====================================================
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }
"

"=====================================================
""  Python syntax
"=====================================================
" highlight 'long' lines (>= 120 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=238 guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%119v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=120
augroup END
hi ColorColumn ctermbg=238  guibg=DarkGrey

hi pythonDocstring ctermfg=8
hi pythonRawString ctermfg=220 cterm=italic
hi pythonUniString ctermfg=220 cterm=italic

hi pythonStrFormat ctermfg=99
hi pythonStrTemplate ctermfg=99

hi pythonClass ctermfg=45
hi pythonClassParameters ctermfg=45

hi pythonSelf ctermfg=215 cterm=italic
hi pythonParam ctermfg=215
hi pythonParameters ctermfg=215

hi pythonBuiltinObj ctermfg=99
hi pythonBuiltinType ctermfg=45
hi pythonBuiltinFunc ctermfg=45
hi pythonDottedName ctermfg=147
hi pythonLambdaExpr ctermfg=247 cterm=italic
hi pythonOperator ctermfg=170
hi pythonNumber ctermfg=147


"=====================================================
"" Python-mode settings
"=====================================================
let g:pymode = 1                                            " Common functionality
let g:pymode_warnings = 0
let g:pymode_options_max_line_length = 119
let g:pymode_options = 0

let g:pymode_python='python3'                               " Python version: 'python' or 'python3'

let g:pymode_indent = 1                                     " Python indentation

let g:pymode_folding = 0                                    " Python folding

let g:pymode_motion = 1                                     " Vim motion

let g:pymode_doc = 0                                        " Doc
let g:pymode_doc_bind = 'K'

let g:pymode_virtualenv = 0                                 " Support virtualenv
let g:pymode_paths = reverse(
        split(globpath(getcwd().'/eggs', '*'), '\n')
    )                                                       " support zc.buildout

let g:pymode_run = 1                                        "  Run code
let g:pymode_run_bind = '<leader>r'

let g:pymode_breakpoint = 1                                 " Breakpoints
let g:pymode_breakpoint_cmd = "import ipdb; ipdb.set_trace()  # TODO(guojiawei) REMOVE THE BREAKPOINT"

let g:pymode_lint = 0                                       " Code checking

let g:pymode_rope = 1                                       " Rope support
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_completion = 0                            " Completion, use YCM
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0

let g:pymode_rope_rename_bind = '<C-c>rr'                   " Refactoring
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport_bind = '<C-c>ra'
let g:pymode_rope_module_to_package_bind = '<C-c>r1p'
let g:pymode_rope_use_function_bind = '<C-c>ru'

let g:pymode_rope_goto_definition_bind = '<C-g>'

" Command for open window when definition has been found
" Values are (`e`, `new`, `vnew`)                   *'g:pymode_rope_goto_definition_cmd'*
let g:pymode_rope_goto_definition_cmd = 'vnew'

"  Syntax
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
" let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_space_errors=0
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all


"=====================================================
"  YouCompleteMe settings
"=====================================================
set completeopt=menu,menuone                                " set completeopt=preview,menu

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion=1                 " 输入第2个字符开始补
let g:ycm_cache_omnifunc=1                                  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1                    " 开启语义补全
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_tags_files=1             " 开启 YCM 基于标签引擎
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_goto_buffer_command = 'vertical-split'            " 'same-buffer'  'new-tab' 在实现和声明之间跳转,并分屏打开
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

let g:ycm_key_list_select_completion = ['<TAB>', '<Down>'] 

nmap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <leader>g :YcmCompleter GoTo<CR>
" nmap <leader>d :YcmCompleter GoToDefinition<CR>
let g:ycm_enable_diagnostic_highlighting = 0 
let g:ycm_filepath_completion_use_working_dir = 1


"=====================================================
"  Ctrlp settings
"=====================================================
" 显示缓冲区文件，并可通过序号进行跳转
nmap <Leader><Tab> :CtrlPBuffer<CR>
"设置搜索时忽略的文件
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " */node_modulues/*,*/eggs/*    " MacOSX/Linux
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](node_modules|DS_Store|dist|build|doc|tmp|coverage|eggs)|(\.(git|hg|svn|rvm|idea|ropeproject)$)',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }

let g:ctrlp_working_path_mode = 'ra'                        " 0 or '' or 'c' or 'r' or 'a'
                                                            " ‘c’--当前文件的目录
                                                            " ‘a’--当前文件的目录，除非它是cwd的子目录
                                                            " ‘r’--最近的当前文件，包含了这些.git .hg .svn .bzr_darcs文件或目录
                                                            " ‘w’--和r类似，以cwd开始搜索，而非以当前文件目录

let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 11                                 " 修改 QuickFix 窗口显示的最大条目数
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_mruf_max = 500                                  " 设置MRU最大条目数为500
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_by_filename = 1                                 " 默认使用全路径搜索，置 1 后按文件名搜索，准确率会有所提高，可以用 <C-d> 进行切换
let g:ctrlp_regexp = 0                                      " 默认不使用正则表达式，置 1 改为默认使用正则表达式，可以用 <C-r> 进行切换
let g:ctrlp_line_prefix = '♪ '                              " 自定义搜索列表的提示符


"=====================================================
" Ctrlp-funky settings
"=====================================================
nnoremap <Leader><Leader>u :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader><Leader>U :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']


"=====================================================
" ALe settings
"=====================================================
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 0

let g:ale_linters = {
            \    'javascript': ['eslint','babel-eslint'],
            \    'css': ['stylelint'],
            \}
let g:ale_fixers = {
            \    'javascript': ['eslint', 'babel-eslint'],
            \    'css': ['stylelint'],
            \}
let g:ale_python_flake8_executable = 'python3'

let g:ale_set_highlights = 0
let g:ale_lint_on_save = 1                                  " save file auto check
let g:ale_lint_on_text_changed = 0                          " for ale_lint_on_save = 1
let g:ale_lint_on_enter = 0                                 " for ale_lint_on_save = 1
let g:ale_fix_on_save = 0

let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']     " 添加状态栏信息
let g:ale_sign_error = "😡"                                 " 自定义error和warning图标
let g:ale_sign_warning = "☹️'"
" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '▶'
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'
                                                            " 显示Linter名称, 出错或警告等相关信息
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s '

" map <F6> :ALEToggle \| echo 'g:ale_enabled =' g:ale_enabled<CR>

let g:airline#extensions#ale#enabled = 1

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return l:counts.total == 0 ? '老铁没毛病' : printf(
                \   '%dW %dE',
                \   all_non_errors,
                \   all_errors
                \)
endfunction
set statusline=%{LinterStatus()}

nmap <silent> <C-s>k <Plug>(ale_previous_wrap)
nmap <silent> <C-s>j <Plug>(ale_next_wrap)

let g:ale_list_window_size = 5                              " Show 5 lines of errors (default: 10)

highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=DarkMagenta


" =====================================================
" AutoFormat settings
" =====================================================
" au BufWrite * :Autoformat
" let g:formatters_python = ['autopep8']
noremap <leader>p :Autoformat<cr>


" =====================================================
" Autopep8 settings
" =====================================================
let g:autopep8_max_line_length=119
let g:autopep8_on_save=1
let g:autopep8_disable_show_diff=1


" =====================================================
" file Headers
" =====================================================
autocmd BufNewFile *.c,*.cpp,*.sh,*.py,*.java exec ":call SetTitle()"
func! SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call setline(2, "\# -*- coding=utf8 -*-")
    endif
endfunc
autocmd BufNewfile * normal G

"=====================================================
" ctrlsf.vim settings
"=====================================================
let g:ctrlsf_ackprg = 'ag'
nnoremap <Leader><Leader>f :CtrlSF<Space>
nnoremap <Leader><Leader>ff :execute 'CtrlSF ' . expand('<cword>')<Cr>
nnoremap <Leader><Leader>fo :CtrlSFOpen

let g:ctrlsf_ignore_dir = ["node_modules", "eggs", ".idea", ".ropeproject"]

let g:ctrlsf_auto_focus = {
            \ "at": "start",
            \ }
let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 0
    \}
let g:ctrlsf_search_mode = 'async'
" let g:ctrlsf_position = 'bottom'
let g:ctrlsf_default_view_mode = 'compact'


"=====================================================
"  SQL
"=====================================================
let g:omni_sql_no_default_maps = 1


"=====================================================
" indentLine
"=====================================================
let g:indentLine_color_term = 239


"=====================================================
" git 
"=====================================================
highlight GitGutterAdd    guifg=#009900 guibg=<X> ctermfg=2 
highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3 
highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1 
