"*************************************************************************************************
" Key Mapping Settings
"
"*************************************************************************************************


"=================================================================================================
" Buildin Mappings
"=================================================================================================
" Navigation
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>

imap jj <Esc>
" imap <C-J> <C-O>j
" imap <C-K> <C-O>k
imap <C-H> <C-O>b
imap <C-L> <C-O>w

" Save
imap <C-S> <C-O>:update<cr><Esc>
nmap <Leader>w :update<cr>

" Quit
nmap <Leader>q :q<cr>
nmap <Leader>Q :qa!<cr>
nmap <Leader>e <C-Z><cr>

" Yank
vmap <Leader>y "+y<cr>
nmap <Leader>Y :let @+=expand("%:p")<CR>:echo 'Yanked absolute path'<CR>

" Macro
nmap @ q
map q <Nop>

" CMD
nmap M :

" Nvim
" if has('nvim')
"   tmap <a-a> <esc>a
"   tmap <a-b> <esc>b
"   tmap <a-d> <esc>d
"   tmap <a-f> <esc>f
" endif

" Tab-complete
function! s:check_back_space() abort
  let col = col('.') - 1
  return ! col || getline('.')[col - 1] =~? '\s'
endfunction

" Moving lines
vmap <silent> <C-K> :move-2<cr>gv
vmap <silent> <C-J> :move'>+<cr>gv
vmap <silent> <C-H> <gv
vmap <silent> <C-L> >gv
" xmap <  <gv
" xmap >  >gv

" Toggle
nmap <CR> za
set pastetoggle=<F3>

" Split
nmap <Leader>v :vsplit<cr>
nmap <Leader>h :split<cr>

" Scroll
nmap <C-]> z4l
" <C-[> equivalent <Esc>
" nmap <C-[> z4h

" Clear search highlights
nmap <Leader>ch :noh<cr>
" Remove spaces at the end of lines
nmap <Leader>cw :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>
" Switch (window) to the directory of the current opened buffer
nmap <Leader>cd :lcd %:p:h<CR>:pwd<CR>

" #!! | Shebang
inoreabbrev <expr> #!! "#!/usr/bin/env" . (empty(&filetype) ? '' : ' '.&filetype)


"=================================================================================================
" Plugin Mappings
"=================================================================================================
if plug#is_loaded('python-mode')
  let g:pymode_rope_rename_bind = '<C-c>rn'
  let g:pymode_rope_rename_module_bind = ''
  let g:pymode_rope_autoimpirt_bind = ''
  let g:pymode_rope_organize_imports_bind = '<C-c>ro'
  let g:pymode_rope_module_to_package_bind = ''
  let g:pymode_rope_use_function_bind = ''
  let g:pymode_rope_goto_definition_bind = '<C-g>'
endif

if plug#is_loaded('vim-go')
  augroup vimgo_keybind
    au!
    au FileType go nmap <C-G> <Plug>(go-def-vertical)
  augroup END
endif

if plug#is_loaded('coc.nvim')
  imap <silent><expr> <TAB>
        \ pumvisible() ? coc#_select_confirm() :
        \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  imap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  imap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  " Movement within 'ins-completion-menu'
  imap <expr><C-j> pumvisible() ? "\<Down>" : "\<C-j>"
  imap <expr><C-k> pumvisible() ? "\<Up>" : "\<C-k>"

  nmap <silent> <C-c>k <Plug>(coc-diagnostic-prev)
  nmap <silent> <C-c>j <Plug>(coc-diagnostic-next)

  nmap <silent> <Leader>d <Plug>(coc-definition)

  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> gf <Plug>(coc-refactor)
  nmap <silent> gn <Plug>(coc-rename)

  function! s:show_documentation()
    if (index(['vim', 'help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      let l:found = CocAction('doHover')
    endif
  endfunction
  nmap <silent> K :call <SID>show_documentation()<CR>

  command! -nargs=0 Format :call CocAction('format')
  command! -nargs=0 ORI    :call CocAction('runCommand', 'editor.action.organizeImport')
endif

if plug#is_loaded('LeaderF')
  let g:Lf_ShortcutF = ''
  let g:Lf_ShortcutB = ''
  nmap <C-P> :<C-U><C-R>=printf("Leaderf file --popup %s", "")<CR><CR>
  nmap <C-F> :<C-U><C-R>=printf("Leaderf mru --popup %s", "")<CR><CR>
  nmap <C-B> :<C-U><C-R>=printf("Leaderf buffer --popup %s", "")<CR><CR>

  nmap <Leader>l :<C-U><C-R>=printf("Leaderf line --popup %s", "")<CR><CR>
  nmap <Leader>f :<C-U><C-R>=printf("Leaderf function --popup %s", "")<CR><CR>
  nmap <Leader>9 :<C-U><C-R>=printf("Leaderf bufTag --popup %s", "")<CR><CR>
  nmap <Leader>s :<C-U><C-R>=printf("Leaderf! rg -w -e %s", expand("<cword>"))<CR>
  xmap <Leader>s :<C-U><C-R>=printf("Leaderf! rg -F -e %s", Leaderf#Rg#visual())<CR>
  nmap <Leader>S :<C-U><C-R>=printf("Leaderf! rg -w -e ")<CR>
  nmap go :<C-U>Leaderf! rg --recall<CR>
endif

if plug#is_loaded('ale')
  map <F6> :ALEToggle \| echo 'g:ale_enabled =' g:ale_enabled<CR>

  nmap <silent> <C-s>k <Plug>(ale_previous_wrap)
  nmap <silent> <C-s>j <Plug>(ale_next_wrap)
endif

if plug#is_loaded('delimitMate')
  imap <buffer><expr> <C-Tab> delimitMate#JumpAny()
endif

if plug#is_loaded('vim-xtabline')
  nmap } <Plug>(XT-Next-Buffer)
  nmap { <Plug>(XT-Prev-Buffer)

  nmap <Leader>cb <Plug>(XT-Close-Buffer)
  nmap <Leader>tn <Plug>(XT-Tab-New)
  nmap <Leader>td <Plug>(XTabDeleteTab)
endif

if plug#is_loaded('nerdtree')
  nmap ' :NERDTreeToggle<cr>
  nmap " :NERDTreeFind<cr>
endif

if plug#is_loaded('xterm-color-table.vim')
  nmap <Leader>7 :XtermColorTable<cr>
endif

if plug#is_loaded('vim-interestingwords')
  map <Plug>DisableInterestingWords <Plug>InterestingWords
  nmap <silent> <Leader>i :call InterestingWords('n')<cr>
  nmap <silent> <Leader>I :call UncolorAllWords()<cr>
  nmap <silent> n :call WordNavigation(1)<cr>
  nmap <silent> N :call WordNavigation(0)<cr>
endif

if plug#is_loaded('vim-translate-me')
  nmap <silent> <Leader>tt <Plug>TranslateW
  vmap <silent> <Leader>tv <Plug>TranslateWV
endif

if plug#is_loaded('tagbar')
  map <Leader>0 :TagbarToggle <CR>
endif

if plug#is_loaded('undotree')
  nmap <Leader>8 :UndotreeToggle<cr>
endif

if plug#is_loaded('vim-floaterm')
  nmap <silent> <Leader>= :FloatermToggle<CR>
  tmap <silent> <Leader>= <C-\><C-n>:FloatermToggle<CR>
endif

if plug#is_loaded('vim-bookmarks')
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
  au BufEnter * :call BookmarkMapKeys()
  au BufEnter NERD_tree_* :call BookmarkUnmapKeys()
endif

" vim: set foldmethod=marker ts=2 sw=2 tw=80 list noet :
