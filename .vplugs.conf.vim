"==============================================================================
"  Plugins Settings
"
"  If you are not familiar with these plugins, it is recommended that you go to
"  each plugin repository to learn how to use them.
"==============================================================================


" -----------------------------------------------------------------------------
" Plugin: python-mode/python-mode
" Language: Python
" -----------------------------------------------------------------------------
let g:pymode = 1                                            " Common functionality
let g:pymode_warnings = 0
let g:pymode_options_max_line_length = 119
let g:pymode_options = 0
let g:pymode_options_colorcolumn = 0

let g:pymode_indent = 1                                     " Python indentation

let g:pymode_folding = 0                                    " Python folding

let g:pymode_motion = 1                                     " Vim motion

let g:pymode_doc = 0                                        " Doc
let g:pymode_doc_bind = 'K'

let g:pymode_virtualenv = 0                                 " Support virtualenv
let g:pymode_paths = reverse(split(globpath(getcwd().'/eggs', '*'), '\n'))  " Support zc.buildout

let g:pymode_run = 0                                        " Run code

let g:pymode_breakpoint = 1                                 " Breakpoints
let g:pymode_breakpoint_cmd = "import ipdb; ipdb.set_trace()  # TODO @guojiawei REMOVE THE BREAKPOINT"

let g:pymode_lint = 0                                       " Code checking

let g:pymode_rope = 1                                       " Rope support
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_completion = 0                            " Completion, use YCM
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_autoimport = 0

let g:pymode_rope_rename_bind = '<C-c>rr'                   " Refactoring
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport_bind = '<C-c>ri'
let g:pymode_rope_module_to_package_bind = '<C-c>r1p'
let g:pymode_rope_use_function_bind = '<C-c>ru'
let g:pymode_rope_goto_definition_bind = '<C-g>'

" Command for open window when definition has been found
" Values are (`e`, `new`, `vnew`)
let g:pymode_rope_goto_definition_cmd = 'vnew'

" Custom syntax
hi pythonBuiltinObj      ctermfg=105
hi pythonBuiltinType     ctermfg=45
hi pythonBuiltinFunc     ctermfg=45
hi pythonDocstring       ctermfg=8
hi pythonComment         ctermfg=8
" hi pythonString        ctermfg=78
hi pythonRawString       ctermfg=214 " cterm=italic
hi pythonUniString       ctermfg=214 " cterm=italic
hi pythonStrFormat       ctermfg=99
hi pythonStrFormatting   ctermfg=99
hi pythonDocTest         ctermfg=99
hi pythonDocTest2        ctermfg=99
hi pythonStrTemplate     ctermfg=99
hi pythonClass           ctermfg=45
hi pythonClassParameters ctermfg=45
hi pythonSelf            ctermfg=215 cterm=italic
hi pythonParam           ctermfg=215
hi pythonParameters      ctermfg=215
hi pythonLambdaExpr      ctermfg=247 cterm=italic
hi pythonNumber          ctermfg=147
hi pythonOperator        ctermfg=204
hi pythonRepeat          ctermfg=177
hi pythonConditional     ctermfg=177
hi pythonExClass         ctermfg=210
" hi pythonExtraOperator ctermfg=170
hi pythonDecorator       ctermfg=208
hi pythonDottedName      ctermfg=139

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


" -----------------------------------------------------------------------------
" Plugin: fatih/vim-go
" Language: Golang
" -----------------------------------------------------------------------------
hi goPackage               ctermfg=109
hi goImport                ctermfg=209

hi goVar                   ctermfg=45
hi goConst                 ctermfg=45
" hi goConst                 ctermfg=216
hi goDeclaration           ctermfg=45 "cterm=italic
hi goTypeDecl              ctermfg=45 "cterm=italic

" Keywords within functions
" defer go goto return break continue fallthrough
" if else switch select
" for range
" case default
hi goStatement             ctermfg=111
hi goConditional           ctermfg=210
hi goRepeat                ctermfg=210
hi goLabel                 ctermfg=210

" Predefined types
" chan map bool string error
" int int8 int16 int32 int64 rune
" byte uint uint8 uint16 uint32 uint64 uintptr
" float32 float64
" complex64 complex128
hi goType                  ctermfg=39
hi goSignedInts            ctermfg=39
hi goUnsignedInts          ctermfg=39
hi goFloats                ctermfg=39
hi goComplexes             ctermfg=39

" Number Integers
hi  goDecimalInt           ctermfg=147"12
hi  goHexadecimalInt       ctermfg=147"12
hi  goOctalInt             ctermfg=147"12
hi  goOctalError           ctermfg=147"12
hi  Integer                ctermfg=147"12
hi  goFloat                ctermfg=147"12

" Predefined functions and values
" append cap close complex copy delete imag len
" make new panic print println real recover
" true false
" nil iota
hi goBuiltins              ctermfg=45
hi goBoolean               ctermfg=12
hi goPredefinedIdentifiers ctermfg=12

" Extra types commonly seen
hi goExtraType             ctermfg=45"137

" Operators
" hi goOperator            ctermfg=151"138
" hi goPointerOperator     ctermfg=151
hi goVarArgs               ctermfg=247

" Functions
" hi goFunction            ctermfg=228
" hi goSimpleParams        ctermfg=215
hi goParamName             ctermfg=215
hi goReceiverVar           ctermfg=215 cterm=italic
hi goParamType             ctermfg=247
hi goFunctionReturn        ctermfg=247
hi goFunctionCall          ctermfg=153"158

" Fields;
" hi goField               ctermfg=158

" Structs & Interfaces
hi goTypeName              ctermfg=174
hi goReceiverType          ctermfg=247
hi goTypeConstructor       ctermfg=174
hi goDeclType              ctermfg=219 "struct interface

" Variable Assignments
hi goVarDefs               ctermfg=253
hi goVarAsgsign            ctermfg=253

" Comment
hi goComment               ctermfg=243

" Strings and their contents
hi goRawString             ctermfg=76
hi goFormatSpecifier       ctermfg=99
hi goCharacter             ctermfg=208

let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

let vimgo_bin = $VIMGOBIN
if filereadable(expand(join([vimgo_bin, "/gopls"], "")))
    let g:go_bin_path = vimgo_bin
    let g:go_search_bin_path_first = 1
endif
 
let g:go_fmt_fail_silently = 1
let g:go_auto_type_info = 0
" let g:go_info_mode = 'gocode'
" let g:go_auto_sameids = 1
" let g:go_updatetime = 5000
let g:go_code_completion_enabled = 0
let g:go_term_mode = "vsplit"
let g:go_decls_includes = 'func,type'
let g:go_decls_mode = ''

let g:go_doc_max_height = 25
let g:go_def_reuse_buffe = 1

let g:go_fmt_command = "goimports"
let g:go_def_mode = 'gopls'

au FileType go nmap <leader>f :GoDecls<cr>
au FileType go nmap <leader>u :GoCallers<cr>
au FileType go nmap <C-g> <Plug>(go-def-vertical)
au FileType go nmap <C-c>rf <Plug>(go-referrers)
au FileType go nmap <C-c>rr <Plug>(go-rename)
au FileType go nmap <C-c>ri <Plug>(go-import)
au FileType go nmap <C-c>rl <Plug>(go-lint)
au FileType go nmap <C-c>ra :GoAddTags<cr>
au FileType go nmap <C-c>rs :GoFillStruct<cr>
au FileType go nmap <C-c>re :GoIfErr<cr>


" -----------------------------------------------------------------------------
" Plugin: 'Valloric/YouCompleteMe'
" Support: Python, Golang, JS, TS, etc...
" -----------------------------------------------------------------------------
set completeopt=menu,menuone

let g:ycm_add_preview_to_completeopt = 0

let g:ycm_show_diagnostics_ui = 0
let g:ycm_registrorer_as_syntastic_checker = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0

let g:ycm_min_num_of_chars_for_completion=1                 " 输入第1个字符开始补
let g:ycm_cache_omnifunc=1                                  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1                    " 开启语义补全，关键字等
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_use_ultisnips_completer = 1                       " 提示 UltiSnips
let g:ycm_collect_identifiers_from_comments_and_strings = 0   "注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files=1             " 开启 YCM 基于标签引擎
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_goto_buffer_command = 'same-buffer'               "'vertical-split','new-tab'
let g:ycm_confirm_extra_conf=0
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_disable_for_files_larger_than_kb = 2000
let g:ycm_max_diagnostics_to_display = 0
let g:ycm_filetype_blacklist = {
            \ 'notes': 1,
            \ 'help': 1,
            \ 'unite': 1,
            \ 'pandoc': 1,
            \ 'qf': 1,
            \ 'infolog': 1,
            \ 'mail': 1,
            \ 'tagbar' : 1,
            \ 'gitcommit' : 1,
            \}

nmap <leader>d :YcmCompleter GoTo<CR>
nmap <leader>u :YcmCompleter GoToReferences<CR>
nmap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>


" -----------------------------------------------------------------------------
" Plugin: kien/ctrlp.vim
" -----------------------------------------------------------------------------
map <C-f> :CtrlPMixed<CR>
map <Leader><Tab> :CtrlPBuffer<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip " */node_modulues/*,*/eggs/*    " MacOSX/Linux
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](node_modules|DS_Store|dist|build|doc|tmp|coverage|eggs)|(\.(git|hg|svn|rvm|idea|ropeproject)$)',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }

" 0 or '' or 'c' or 'r' or 'a'
" ‘c’--当前文件的目录
" ‘a’--当前文件的目录，除非它是cwd的子目录
" ‘r’--最近的当前文件，包含了这些.git .hg .svn .bzr_darcs文件或目录
" ‘w’--和r类似，以cwd开始搜索，而非以当前文件目录
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 15                                 " 修改 QuickFix 窗口显示的最大条目数
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_mruf_max = 500                                  " 设置MRU最大条目数为500
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_by_filename = 1                                 " 默认使用全路径搜索，置 1 后按文件名搜索，准确率会有所提高，可以用 <C-d> 进行切换
let g:ctrlp_regexp = 0                                      " 默认不使用正则表达式，置 1 改为默认使用正则表达式，可以用 <C-r> 进行切换
let g:ctrlp_line_prefix = '👉 '                             " 自定义搜索列表的提示符
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" -----------------------------------------------------------------------------
" Plugin: tacahiroy/ctrlp-funky
" -----------------------------------------------------------------------------
nmap <Leader>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nmap <Leader>F :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']


" -----------------------------------------------------------------------------
" Plugin: dyng/ctrlsf.vim
" -----------------------------------------------------------------------------
let g:ctrlsf_ackprg = 'ag'

nmap <Leader>s <Plug>CtrlSFPrompt
vmap <Leader>s <Plug>CtrlSFVwordExec
nmap <Leader>S <Plug>CtrlSFCwordPath

let g:ctrlsf_ignore_dir = ["node_modules", "eggs", ".idea", ".ropeproject"]

" let g:ctrlsf_auto_focus = {
"             \"at": \"start",
"             \ }
let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_auto_close = {
            \ "normal" : 0,
            \ "compact": 0
            \}
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_default_view_mode ='compact'               " 'normal' and 'compact''
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_winsize = '45%'
let g:ctrlsf_selected_line_hl = 'op'


" -----------------------------------------------------------------------------
" Plugin: dense-analysis/ale
" -----------------------------------------------------------------------------
nmap <silent> <C-s>k <Plug>(ale_previous_wrap)
nmap <silent> <C-s>j <Plug>(ale_next_wrap)

let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 0
let g:ale_linters = {
            \   'javascript': ['eslint','babel-eslint'],
            \   'typescript': ['tsserver', 'tslint'],
            \   'vue': ['eslint']
            \}
let g:ale_fixers = {
            \    'javascript': ['eslint', 'babel-eslint'],
            \    'typescript': ['prettier'],
            \    'vue': ['eslint'],
            \    'scss': ['prettier'],
            \    'html': ['prettier']
            \}
let g:ale_python_flake8_executable = 'python3'
let g:ale_set_highlights = 0
let g:ale_lint_on_save = 1                                  " save file auto check
let g:ale_lint_on_text_changed = 0                          " for ale_lint_on_save = 1
let g:ale_lint_on_enter = 0                                 " for ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']     " 添加状态栏信息
let g:ale_sign_error = "😡"                                 " 自定义error和warning图标
let g:ale_sign_warning = "😨"
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s '
let g:airline#extensions#ale#enabled = 1
let g:ale_list_window_size = 5                              " Show 5 lines of errors (default: 10)

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return l:counts.total == 0 ? 'OK' : printf(
                \   '%dW %dE',
                \   all_non_errors,
                \   all_errors
                \)
endfunction
set statusline=%{LinterStatus()}

map <F6> :ALEToggle \| echo 'g:ale_enabled =' g:ale_enabled<CR>

highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=DarkMagenta


" -----------------------------------------------------------------------------
"  Plugin: bling/vim-airline
" -----------------------------------------------------------------------------
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
" Enable top tabline.
let g:airline#extensions#tabline#enabled = 1
" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#enabled = 0                  " 开启 tabline
let g:airline#extensions#tabline#buffer_nr_show = 0           " 显示 buffer编号
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnametruncate = 1
let g:airline#extensions#tabline#show_close_button = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline_left_sep          = '▶'
    let g:airline_left_alt_sep      = '»'
    let g:airline_right_sep         = '◀'
    let g:airline_right_alt_sep     = '«'
    let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
    let g:airline#extensions#readonly#symbol   = '⊘'
    let g:airline#extensions#linecolumn#prefix = '¶'
    let g:airline#extensions#paste#symbol      = 'ρ'
    let g:airline_symbols.linenr    = '␊'
    let g:airline_symbols.branch    = '⎇'
    let g:airline_symbols.paste     = 'ρ'
    let g:airline_symbols.paste     = 'Þ'
    let g:airline_symbols.paste     = '∥'
    let g:airline_symbols.whitespace = 'Ξ'
else
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''

    " powerline symbols
    let g:airline_left_sep = '▶'                                 " unicode symbols
    let g:airline_left_alt_sep = '❯'
    let g:airline_right_sep = '◀'
    let g:airline_right_alt_sep = '❮'
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline#extensions#tabline#close_symbol = 'X'
endif

let airline#extensions#tabline#ignore_bufadd_pat = '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'


" -----------------------------------------------------------------------------
"  Plugin: 'mg979/vim-xtabline'
" -----------------------------------------------------------------------------
let g:xtabline_settings = {}
let g:xtabline_settings.close_buffer_can_close_tab = 1
let g:xtabline_settings.close_buffer_can_quit_vim  = 1
let g:xtabline_settings.theme='dracula'
let g:xtabline_settings.tab_icon=['📍','']
let g:xtabline_settings.named_tab_icon=['📍','']

nmap <CR> <Plug>(XT-Select-Buffer)
nmap <Tab> <Plug>(XT-Next-Buffer)
nmap <leader>0 <Plug>(XT-Close-Buffer)

nmap <leader>tn <Plug>(XT-Tab-New)
nmap <leader>td <Plug>(XTabDeleteTab)


" -----------------------------------------------------------------------------
"  Plugin: majutsushi/tagbar
" -----------------------------------------------------------------------------
map <Leader>* :TagbarToggle <CR>
autocmd BufWinLeave *.py :TagbarClose
autocmd BufWinLeave *.go :TagbarClose

let g:tagbar_autofocus=1
let g:tagbar_width=28
let g:tagbar_autopreview = 0                                " 关闭自动预览
let g:tagbar_sort = 0                                       " 关闭排序,即按标签本身在文件中的位置排序


" -----------------------------------------------------------------------------
" Plugin: plasticboy/vim-markdown
" -----------------------------------------------------------------------------
let g:vim_markdown_folding_disabled = 1                     " Disable folding
let g:vim_markdown_toc_autofit = 1                          " Auto shrink the TOC
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0


" -----------------------------------------------------------------------------
" Plugin: scrooloose/nerdtree
" -----------------------------------------------------------------------------
let g:NERDTreeChDirMode=2
let NERDTreeWinSize=33
let NERDTreeShowHidden=0                                    " 是否显示隐藏文件
let NERDTreeMinimalUI=0                                     " NERDTree 子窗口中是否显示冗余帮助信息
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp','__pycache__','\.git$','\.DS_Store', '\.a', '\.rbc$', '\.db$']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowLineNumbers=0
let NERDTreeNodeDelimiter="📁"                              "smiley face
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

nmap ' :NERDTreeToggle<cr>
nmap " :NERDTreeFind<cr>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" -----------------------------------------------------------------------------
" Plugin: airblade/vim-gitgutter
" -----------------------------------------------------------------------------
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


" -----------------------------------------------------------------------------
" Plugin: airblade/vim-gitgutter
" -----------------------------------------------------------------------------
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1


" -----------------------------------------------------------------------------
" Plugin: tell-k/vim-autopep8
" -----------------------------------------------------------------------------
let g:autopep8_max_line_length=115
let g:autopep8_on_save=1
let g:autopep8_disable_show_diff=1


" -----------------------------------------------------------------------------
" Plugin: Chiel92/vim-autoformat
" -----------------------------------------------------------------------------
" let g:formatters_python = ['autopep8']
noremap <leader>p :Autoformat<cr>


" -----------------------------------------------------------------------------
" Language: SQL
" -----------------------------------------------------------------------------
let g:omni_sql_no_default_maps = 1


" -----------------------------------------------------------------------------
" Plugin: yggdroot/indentline
" -----------------------------------------------------------------------------
let g:indentLine_color_term = 239


" -----------------------------------------------------------------------------
" Plugin: 'luochen1990/rainbow'
" -----------------------------------------------------------------------------
" let g:rainbow_active = 1


" -----------------------------------------------------------------------------
" Plugin: 'guns/xterm-color-table.vim'
" -----------------------------------------------------------------------------
nmap <leader>xct :XtermColorTable<cr>


" -----------------------------------------------------------------------------
" Plugin: 'lfv89/vim-interestingwords'
" -----------------------------------------------------------------------------
map <Plug>DisableInterestingWords <Plug>InterestingWords

nnoremap <silent> <leader>i :call InterestingWords('n')<cr>
vnoremap <silent> <leader>i :call InterestingWords('v')<cr>
nnoremap <silent> <leader>I :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>

let g:interestingWordsRandomiseColors = 1


" -----------------------------------------------------------------------------
" Plugin: 'voldikss/vim-translate-me'
" -----------------------------------------------------------------------------
let g:vtm_default_mapping = 0
let g:vtm_enable_history = 0

" Leader>w 翻译光标下的文本，在窗口中显示
nmap <silent> <Leader>tt <Plug>TranslateW
vmap <silent> <Leader>tv <Plug>TranslateWV

nmap <silent> <Leader>tr <Plug>TranslateR


" -----------------------------------------------------------------------------
" Plugin: 'airblade/vim-gitgutter'
" -----------------------------------------------------------------------------
map <Plug>DisableGitGutterPreviewHunk <Plug>GitGutterPreviewHunk
map <Plug>DisableGitGutterUndoHunk <Plug>GitGutterUndoHunk
map <Plug>DisableGitGutterStageHunk <Plug>GitGutterStageHunk


" -----------------------------------------------------------------------------
" Plugin: 'mbbill/undotree'
" -----------------------------------------------------------------------------
if has("persistent_undo")
    silent exec "!mkdir ~/.vimundodir"
    set undodir=~/.vimundodir
    set undofile
endif

nnoremap <F5> :UndotreeToggle<cr>


" -----------------------------------------------------------------------------
" Plugin: 'farmergreg/vim-lastplace'
" -----------------------------------------------------------------------------
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"


" -----------------------------------------------------------------------------
" Plugin: 'MattesGroeger/vim-bookmarks'
" -----------------------------------------------------------------------------
let g:bookmark_no_default_key_mappings = 1
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '👉'
let g:bookmark_highlight_lines = 0
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
    nmap mkk :BookmarkMoveUp
    nmap mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()


" -----------------------------------------------------------------------------
" Plugin: 'jiangmiao/auto-pairs'
" -----------------------------------------------------------------------------
let g:AutoPairsMapBS = 0


" -----------------------------------------------------------------------------
" Plugin: 'easymotion/vim-easymotion'
" -----------------------------------------------------------------------------
let g:EasyMotion_do_mapping = 0

nmap <silent> f <Plug>(easymotion-overwin-f2)
nmap <silent> F <Plug>(easymotion-overwin-f)

map <leader><leader>j <Plug>(easymotion-j)
map <leader><leader>k <Plug>(easymotion-k)


" -----------------------------------------------------------------------------
" Plugin: 'voldikss/vim-floaterm'
" -----------------------------------------------------------------------------
noremap  <silent> <F12> :FloatermToggle<CR>i
noremap! <silent> <F12> <Esc>:FloatermToggle<CR>i
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>


" -----------------------------------------------------------------------------
" Plugin: 'terryma/vim-multiple-cursors'
" -----------------------------------------------------------------------------
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
