"*************************************************************************************************
" FileType Settings
"
"*************************************************************************************************

augroup user_ft_setter
  au!

  au FileType python set smartindent
  au FileType go set foldmethod=syntax
  au FileType python,go set expandtab smarttab shiftwidth=4 tabstop=4
  au FileType python,go set nocursorcolumn
  au FileType python,go syntax sync minlines=800
  au FileType python,go set synmaxcol=800
  au FileType python,go set re=1
  au FileType php,c,cpp,java,perl,shell,bash,ruby,apiblueprint set cindent
  au FileType php,c,cpp,java,perl,shell,bash,ruby,apiblueprint set expandtab
  au FileType php,c,cpp,java,perl,shell,bash,ruby,apiblueprint set smarttab
  au FileType php,c,cpp,java,perl,shell,bash,ruby,apiblueprint set shiftwidth=4
  au FileType php,c,cpp,java,perl,shell,bash,ruby,apiblueprint set tabstop=4
  au FileType vim,coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift,typescript,typescript.tsx set smartindent
  au FileType vim,coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift,typescript,typescript.tsx set expandtab
  au FileType vim,coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift,typescript,typescript.tsx set smarttab
  au FileType vim,coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift,typescript,typescript.tsx set shiftwidth=2
  au FileType vim,coffee,html,css,xml,jsx,javascript,fish,gitconfig,less,proto,sql,thrift,typescript,typescript.tsx set tabstop=2
  au FileType yaml set tabstop=2 expandtab shiftwidth=2
  au FileType json set smartindent expandtab formatoptions=tcq2l
  au FileType json set textwidth=80 shiftwidth=2 tabstop=4
  au FileType gitcommit set textwidth=80
  au FileType makefile set noexpandtab
  au FileType crontab set nobackup nowritebackup
  au FileType yaml.docker-compose set expandtab
  au FileType gitcommit set spell
  au FileType gitcommit,qfreplace set nofoldenable
  au FileType html set path+=./;/
  au FileType apache set path+=./;/

augroup END


augroup user_plugin_filetype
  au!

  " Automatically set read-only for files being edited elsewhere
  au SwapExists * nested let v:swapchoice = 'o'
  " Equalize window dimensions when resizing vim window
  au VimResized * tabdo wincmd =
  " Check if file changed when its window is focus, more eager than 'autoread'
  au FocusGained * checktime
  au Syntax * if line('$') > 5000 | syntax sync minlines=500 | endif
  " Update filetype on save if empty
  au BufWritePost * nested
    \ if &l:filetype ==# '' || exists('b:ftdetect')
    \ |   unlet! b:ftdetect
    \ |   filetype detect
    \ | endif

augroup END


" vim: set foldmethod=marker ts=2 sw=2 list noet :
