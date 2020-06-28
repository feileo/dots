"*************************************************************************************************
" at7h's neo/vim config
"
"*************************************************************************************************

set nocompatible

" Set main configuration directory as current directory
let $VIM_PATH = fnamemodify(resolve(expand('<sfile>')), ':h')

let $PLUGIN_PATH = $VIM_PATH . '/.plugin'
let $VIMPLUG_FILE = $VIM_PATH . '/autoload/plug.vim'
let $DATA_PATH = $VIM_PATH . '/.cache'
let $UNDO_PATH = $DATA_PATH . '/undo'
let $BACKUP_PATH = $DATA_PATH . '/backup'
let $SESSION_PATH = $DATA_PATH . '/session'
let $BOOKMARK_PATH = $DATA_PATH . '/bookmarks'

function! s:source_file(path, ...)
  let use_global = get(a:000, 0, ! has('vim_starting'))
  let abspath = resolve($VIM_PATH . '/' . a:path)
  if ! use_global
    execute 'source' fnameescape(abspath)
  endif
endfunction

if has('vim_starting')
  let g:mapleader="\<Space>"
  let g:maplocalleader=';'

  nmap <Space>  <Nop>
  xmap <Space>  <Nop>
  nmap ,        <Nop>
  xmap ,        <Nop>
  nmap ;        <Nop>
  xmap ;        <Nop>
endif

if has('vim_starting')
  if &runtimepath !~# $VIM_PATH
    set runtimepath^=$VIM_PATH
  endif

  for s:path in [ $DATA_PATH, $UNDO_PATH, $BACKUP_PATH, $SESSION_PATH, $BOOKMARK_PATH ]
    if ! isdirectory(s:path)
      call mkdir(s:path, 'p')
    endif
  endfor
endif

filetype plugin indent on
call s:source_file('config/plugins.vim')

if has('vim_starting')
  syntax enable
endif
colorscheme sunrise

call s:source_file('config/general.vim')
call s:source_file('config/filetype.vim')
call s:source_file('config/mappings.vim')

" Loading user custom local settings
if filereadable($VIM_PATH . '/config/local.vim')
  call s:source_file('config/local.vim')
endif

set secure


" vim: set ts=2 sw=2 tw=80 list noet :
