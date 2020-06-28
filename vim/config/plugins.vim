"*************************************************************************************************
" Plugin package management and settings
"
" Required: Vim-plug
" Download vim-plug from the URL below and follow the installation
" instructions:
" https://github.com/junegunn/vim-plug
"*************************************************************************************************


"=================================================================================================
" Plug install packages
"=================================================================================================
call plug#begin($PLUGIN_PATH)
  " Start
  " ----------------------------------------------------------------------------------------------
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-sleuth'
  Plug 'romainl/vim-cool'
  Plug 'Raimondi/delimitMate'
  Plug 'farmergreg/vim-lastplace'

  " Language support
  " ----------------------------------------------------------------------------------------------
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
  Plug 'rhysd/vim-gfm-syntax', { 'for': 'markdown' }
  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
  Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown', 'on': 'MarkdownPreview', 'do': ':call mkdp#util#install()' }
  Plug 'tbastos/vim-lua', { 'for': 'lua' }
  Plug 'vim-jp/syntax-vim-ex', { 'for': 'vim' }
  Plug 'ekalinin/Dockerfile.vim', { 'for': ['docker', 'dockerfile'] }
  Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
  Plug 'mtdl9/vim-log-highlighting', {'for': ['text', 'log'] }
  Plug 'cespare/vim-toml', { 'for': 'toml' }
  Plug 'chr4/nginx.vim', { 'for': 'nginx' }
  Plug 'pearofducks/ansible-vim', { 'for': 'yaml' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  " Plug 'kylef/apiblueprint.vim', { 'for': 'apiblueprint' }
  " Plug 'jparise/vim-graphql', { 'for': 'javascript' }
  " Plug 'mitsuhiko/vim-sparkup', { 'for': ['xml', 'html'] }
  " Plug 'othree/html5.vim', { 'for': 'html' }
  " Plug 'ap/vim-css-color', { 'for': 'css' }
  " Plug 'groenewege/vim-less', { 'for': 'less' }
  Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescript.tsx'] }
  Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript', 'typescript.tsx']}
  Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['typescript', 'typescript.tsx']}
  Plug 'tpope/vim-endwise', { 'for': ['c', 'cpp', 'lua', 'vim', 'sh'] }

  " Completion & Code-Analysis
  " ---------------------------------------------------------------------------------------------
  " Plug 'ycm-core/YouCompleteMe', { 'commit': 'a47940d', 'do': function('BuildYCM') }
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tell-k/vim-autopep8', { 'for': 'python' }
  Plug 'dense-analysis/ale'

  " Commands
  " ---------------------------------------------------------------------------------------------
  " Plug 'reedes/vim-wordy'
  Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }  " better than ctrlp+ctrlp-funky+ctrlsf
  Plug 'MattesGroeger/vim-bookmarks'
  Plug 'voldikss/vim-translate-me'
  Plug 'tpope/vim-commentary'
  Plug 'mbbill/undotree'
  Plug 'guns/xterm-color-table.vim', { 'on': 'XtermColorTabl' }
  if has('nvim')
    Plug 'voldikss/vim-floaterm', { 'on': 'FloatermToggle' }
  endif

  " Operators & Text Objects
  " ---------------------------------------------------------------------------------------------
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'tpope/vim-surround'
  " Plug 't9md/vim-quickhl'
  Plug 'itchyny/vim-cursorword'
  Plug 'lfv89/vim-interestingwords'

  " Git
  " ---------------------------------------------------------------------------------------------
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'hotwatermorning/auto-git-diff'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Interface
  " ---------------------------------------------------------------------------------------------
  Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
  Plug 'majutsushi/tagbar'
  Plug 'mg979/vim-xtabline', { 'commit': 'cb48b84' }
  Plug 'yggdroot/indentline'

  " Schemes
  " ---------------------------------------------------------------------------------------------
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Lokaltog/vim-powerline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()


"=================================================================================================
"  Plugins Settings
"=================================================================================================

" ------------------------------------------------------------------------------------------------
" Plugin: python-mode/python-mode
" Language: Python
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('python-mode')
  let g:pymode_warnings = 0
  let g:pymode_paths = reverse(split(globpath(getcwd().'/eggs', '*'), '\n'))
  let g:pymode_options_max_line_length = 119
  let g:pymode_options = 0
  let g:pymode_options_colorcolumn = 0
  let g:pymode_motion = 0
  let g:pymode_indent = 1
  let g:pymode_folding = 0
  let g:pymode_doc = 0
  let g:pymode_virtualenv = 0
  let g:pymode_run = 0
  let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()  # TODO @guojiawei REMOVE THE BREAKPOINT'
  let g:pymode_lint = 0
  let g:pymode_rope = 1
  let g:pymode_rope_regenerate_on_write = 0
  let g:pymode_rope_completion = 0
  let g:pymode_rope_lookup_project = 0
  let g:pymode_rope_complete_on_dot = 0
  let g:pymode_rope_autoimport = 0
  let g:pymode_rope_goto_definition_cmd = 'vnew'
  let g:pymode_syntax_all = 1
  let g:pymode_syntax_print_as_function = g:pymode_syntax_all
  let g:pymode_syntax_space_errors = 0
  let g:ultisnips_python_style = 'sphinx'
endif

" ------------------------------------------------------------------------------------------------
" Plugin: fatih/vim-go
" Language: Golang
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-go')
  let g:go_gopls_enabled = 1
  let g:go_fmt_fail_silently = 1
  let g:go_fmt_autosave = 1
  let g:go_fmt_command = "goimports"
  let g:go_imports_autosave = 0
  let g:go_imports_mode = "goimports"
  let g:go_mod_fmt_autosave = 0
  let g:go_doc_keywordprg_enabled = 0
  let g:go_def_mapping_enabled = 0
  let g:go_code_completion_enabled = 0
  let g:go_auto_type_info = 0
  let g:go_def_reuse_buffe = 1
  let g:go_def_mode = 'gopls'
  let g:go_highlight_diagnostic_errors = 0
  let g:go_highlight_diagnostic_warnings = 0
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
  let g:go_highlight_fields = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_generate_tags = 1
  let g:go_highlight_string_spellcheck = 1
  let g:go_highlight_format_strings = 1
  let g:go_highlight_variable_declarations = 0
  let g:go_highlight_variable_assignments = 0
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'neoclide/coc.nvim'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('coc.nvim')
  let g:coc_global_extensions = ['coc-snippets']

  augroup user_plugin_coc
    au!
    au CompleteDone * if pumvisible() == 0 | pclose | endif
  augroup END

  nnoremap <silent> K :call <SID>show_documentation()<CR>
  function! s:show_documentation()
    if (index(['vim', 'help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      let l:found = CocAction('doHover')
    endif
  endfunction
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'Yggdroot/LeaderF'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('LeaderF')
  " let g:Lf_WindowPosition = 'popup'
  let g:Lf_PreviewInPopup = 0
  let g:Lf_PythonVersion = 3
  let g:Lf_CursorBlink = 0
  let g:Lf_HighlightIndividual = 0
  let g:Lf_NumberOfHighlight = 20
  let g:Lf_PreviewCode = 0
  let g:Lf_HideHelp = 1
  let g:Lf_ShowDevIcons = 1
  let g:Lf_UseCache = 0
  let g:Lf_IgnoreCurrentBufferName = 1
  let g:Lf_GtagsAutoGenerate = 0
  let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
  let g:Lf_StlSeparator = { 'left': '►', 'right': '◄', 'font': 'DejaVu Sans Mono for Powerline' }
  let g:Lf_WildIgnore = {
        \ 'dir':  ['node_modules','DS_Store','dist','build','doc','tmp','coverage','eggs','__pycache__','.git','.hg','.svn','.rvm','.idea','.ropeproject', '.cache'],
        \ 'file': ['*.dll','*.zip','*.tar','*.tar.gz','*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]','*.lock'],
        \ 'link': 'some_bad_symbolic_links',
        \ }
  let g:Lf_MruWildIgnore = g:Lf_WildIgnore
  let g:Lf_CtagsFuncOpts = {
        \ 'c': '--c-kinds=fp',
        \ 'rust': '--rust-kinds=f',
        \ }
  command! Todo :Leaderf! rg -e TODO -e FIXME -e XXX<CR>
endif

" ------------------------------------------------------------------------------------------------
" Plugin: dense-analysis/ale
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('ale')
  let g:ale_completion_enabled = 0
  let g:ale_history_enabled = 0
  let g:ale_maximum_file_size = 500000
  let g:ale_echo_delay = 100
  let g:ale_lint_delay = 700
  let g:ale_sign_highlight_linenrs = 1
  " let g:ale_change_sign_column_color = 1
  " let g:ale_sign_column_always = 1
  let g:ale_python_flake8_executable = 'python3'
  let g:ale_set_highlights = 0
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_enter = 0
  let g:ale_lint_on_text_changed = 0
  let ale_lint_on_insert_leave = 0
  let g:ale_fix_on_save = 0
  let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
  " let g:ale_sign_error = "😡"
  " let g:ale_sign_warning = "😒"
  " let g:ale_sign_error = '>>'
  let g:ale_sign_error = '✖'
  let g:ale_sign_warning = '!'
  let g:ale_echo_msg_error_str = 'E'
  let g:ale_echo_msg_warning_str = 'W'
  let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s '
  let g:ale_list_window_size = 7
  " let g:ale_hover_to_preview = 1
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
endif

" ------------------------------------------------------------------------------------------------
"  Plugin: bling/vim-airline
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-airline')
  let g:airline_theme='badwolf'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_tabs = 1
  let g:airline#extensions#tabline#enabled = 0
  let g:airline#extensions#tabline#buffer_nr_show = 0
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
      let g:airline_left_sep = '▶'
      let g:airline_left_alt_sep = '❯'
      let g:airline_right_sep = '◀'
      let g:airline_right_alt_sep = '❮'
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''
      let g:airline#extensions#tabline#close_symbol = 'X'
  endif
  let airline#extensions#tabline#ignore_bufadd_pat = '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'Raimondi/delimitMate'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('delimitMate')
  let g:delimitMate_expand_cr = 1
  let g:delimitMate_expand_space = 1
  let g:delimitMate_smart_quotes = 1
  let g:delimitMate_expand_inside_quotes = 0
  let g:delimitMate_excluded_ft = 'mail,txt'
  augroup user_plugin_delimitMate
    au!
    au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
    au FileType tex let b:delimitMate_quotes = ""
    au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
    au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
  augroup END
endif

" ------------------------------------------------------------------------------------------------
"  Plugin: 'mg979/vim-xtabline'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-xtabline')
  let g:xtabline_settings = {}
	let g:xtabline_settings.enable_mappings = 0
  let g:xtabline_settings.close_buffer_can_close_tab = 1
  let g:xtabline_settings.close_buffer_can_quit_vim  = 1
  let g:xtabline_settings.theme='tomorrow'
  let g:xtabline_settings.tab_icon=['📍','']
  let g:xtabline_settings.named_tab_icon=['📍','']
endif

" ------------------------------------------------------------------------------------------------
"  Plugin: majutsushi/tagbar
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('tagbar')
  let g:tagbar_autofocus=1
  let g:tagbar_width=28
  let g:tagbar_autopreview = 0
  let g:tagbar_sort = 0
  au BufWinLeave *.py :TagbarClose
  au BufWinLeave *.go :TagbarClose
endif

" ------------------------------------------------------------------------------------------------
" Plugin: plasticboy/vim-markdown
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-markdown')
  let g:vim_markdown_folding_disabled = 1
  let g:vim_markdown_toc_autofit = 1
  let g:vim_markdown_conceal = 0
  let g:tex_conceal = ""
  let g:vim_markdown_math = 1
  let g:vim_markdown_conceal_code_blocks = 0
endif

" ------------------------------------------------------------------------------------------------
" Plugin: scrooloose/nerdtree
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('nerdtree')
  let g:NERDTreeChDirMode=2
  let NERDTreeWinSize=30
  let NERDTreeShowHidden=0
  let NERDTreeMinimalUI=0
  let NERDTreeAutoDeleteBuffer=1
  let NERDTreeIgnore=['\.pyc','\~$','\.swp','__pycache__','\.git$','\.DS_Store', '\.a', '\.rbc$', '\.db$']
  let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
  let g:NERDTreeShowLineNumbers=0
  au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif


" ------------------------------------------------------------------------------------------------
" Plugin: 'Xuyuanp/nerdtree-git-plugin'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('nerdtree-git-plugin')
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
endif

" ------------------------------------------------------------------------------------------------
" Plugin: airblade/vim-gitgutter
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-gitgutter')
  let g:gitgutter_map_keys = 0
  map <Plug>DisableGitGutterPreviewHunk <Plug>GitGutterPreviewHunk
  map <Plug>DisableGitGutterUndoHunk <Plug>GitGutterUndoHunk
  map <Plug>DisableGitGutterStageHunk <Plug>GitGutterStageHunk
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'MattesGroeger/vim-bookmarks'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-bookmarks')
  let g:bookmark_auto_save_file = $BOOKMARK_PATH
  let g:bookmark_no_default_key_mappings = 1
  let g:bookmark_highlight_lines = 1
  let g:bookmark_no_default_key_mappings = 1
  let g:bookmark_disable_ctrlp = 1
endif

" ------------------------------------------------------------------------------------------------
" Plugin: tell-k/vim-autopep8
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-autopep8')
  let g:autopep8_max_line_length = 115
  let g:autopep8_disable_show_diff = 1
  let g:autopep8_on_save = 1
endif

" ------------------------------------------------------------------------------------------------
" Plugin: yggdroot/indentline
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('indentline')
  let g:indentLine_color_term = 239
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'lfv89/vim-interestingwords'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-interestingwords')
  let g:interestingWordsRandomiseColors = 1
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'voldikss/vim-translate-me'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-translate-me')
  let g:vtm_default_mapping = 0
  let g:vtm_enable_history = 0
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'farmergreg/vim-lastplace'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-lastplace')
  let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
  let g:lastplace_ignore_buftype = "quickfix,nofile,help"
endif

" ------------------------------------------------------------------------------------------------
" Plugin: 'tpope/vim-sleuth'
" ------------------------------------------------------------------------------------------------
if plug#is_loaded('vim-sleuth')
  let g:sleuth_neighbor_limit = 5
endif

" ------------------------------------------------------------------------------------------------
" Language: SQL
" ------------------------------------------------------------------------------------------------
let g:omni_sql_no_default_maps = 1

" vim: set ts=2 sw=2 list noet :
