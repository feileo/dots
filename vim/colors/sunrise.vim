" Vim color file
" Original Maintainer: at7h (at7h.im@gmail.com)

set background=dark

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name="sunrise"


" ------------------------------------------------------------------------------------------------------
" General colors
" ------------------------------------------------------------------------------------------------------
hi Normal       ctermfg=252  ctermbg=234  cterm=none      guifg=#e3e0d7 guibg=#242424 gui=none
hi Cursor       ctermfg=234  ctermbg=228  cterm=none      guifg=#242424 guibg=#eae788 gui=none
hi Visual       ctermfg=251  ctermbg=239  cterm=none      guifg=#c3c6ca guibg=#554d4b gui=none
hi VisualNOS    ctermfg=251  ctermbg=236  cterm=none      guifg=#c3c6ca guibg=#303030 gui=none
hi Folded       ctermfg=103  ctermbg=237  cterm=none      guifg=#a0a8b0 guibg=#3a4046 gui=none
hi Title        ctermfg=230               cterm=bold      guifg=#ffffd7               gui=bold
hi StatusLine   ctermfg=230  ctermbg=238  cterm=none      guifg=#ffffd7 guibg=#444444 gui=italic
hi VertSplit    ctermfg=238  ctermbg=238  cterm=none      guifg=#444444 guibg=#444444 gui=none
hi StatusLineNC ctermfg=241  ctermbg=238  cterm=none      guifg=#857b6f guibg=#444444 gui=none
hi LineNr       ctermfg=241  ctermbg=232  cterm=none      guifg=#857b6f guibg=#080808 gui=none
hi SpecialKey   ctermfg=241  ctermbg=235  cterm=none      guifg=#626262 guibg=#2b2b2b gui=none
hi WarningMsg   ctermfg=203                               guifg=#ff5f55
hi ErrorMsg     ctermfg=196  ctermbg=236  cterm=bold      guifg=#ff2026 guibg=#3a3a3a gui=bold
hi Underlined   ctermfg=13   ctermbg=none                 guifg=#6c71c4
hi Ignore       ctermfg=none ctermbg=none cterm=none
hi Error        ctermfg=1    ctermbg=none cterm=none,bold guifg=#dc322f               gui=bold


" ------------------------------------------------------------------------------------------------------
" Mode colors
" ------------------------------------------------------------------------------------------------------
hi CursorLine             ctermbg=236                cterm=none          guibg=#32322f
hi Search     ctermfg=235 ctermbg=38   guifg=#99CCFF cterm=none          guibg=#636066 gui=none
hi MatchParen ctermfg=3   ctermbg=none guifg=#b58900 cterm=reverse                     gui=reverse
hi IncSearch  ctermfg=3   ctermbg=none guifg=#cb4b16 cterm=standout                    gui=standout
hi Pmenu      ctermfg=230 ctermbg=238  guifg=#ffffd7                     guibg=#444444
hi PmenuSel   ctermfg=234 ctermbg=192  guifg=#080808                     guibg=#cae982
hi PmenuSbar  ctermfg=144 ctermbg=12   guifg=#eee8d5 cterm=none,reverse  guibg=#839496 gui=none,reverse
hi PmenuThumb ctermfg=176 ctermbg=8    guifg=#839496 cterm=none,reverse  guibg=#002b36 gui=none,reverse


" ------------------------------------------------------------------------------------------------------
" Diff highlighting
" ------------------------------------------------------------------------------------------------------
hi DiffAdd    ctermbg=17                                      guibg=#2a0d6a
hi DiffDelete ctermfg=234 ctermbg=60 guifg=#242424 cterm=none guibg=#3e3969 gui=none
hi DiffText   ctermbg=53                           cterm=none guibg=#73186e gui=none
hi DiffChange ctermbg=237                                     guibg=#382a37


" ------------------------------------------------------------------------------------------------------
" Links
" ------------------------------------------------------------------------------------------------------
hi! link QuickFixLine Search
hi! link FoldColumn   Folded
hi! link CursorColumn CursorLine
hi! link NonText      LineNr


" ------------------------------------------------------------------------------------------------------
" Base Syntax highlighting
" ------------------------------------------------------------------------------------------------------
hi Keyword    ctermfg=111 cterm=none guifg=#88b8f6 gui=none
hi Statement  ctermfg=111 cterm=none guifg=#88b8f6 gui=none
hi Constant   ctermfg=173 cterm=none guifg=#e5786d gui=none
hi Number     ctermfg=173 cterm=none guifg=#e5786d gui=none
hi PreProc    ctermfg=173 cterm=none guifg=#e5786d gui=none
hi Function   ctermfg=192 cterm=none guifg=#cae982 gui=none
hi Identifier ctermfg=192 cterm=none guifg=#cae982 gui=none
hi Type       ctermfg=186 cterm=none guifg=#d4d987 gui=none
hi Special    ctermfg=229 cterm=none guifg=#eadead gui=none
hi String     ctermfg=113 cterm=none guifg=#95e454 gui=italic
hi Comment    ctermfg=246 cterm=none guifg=#9c998e gui=italic
hi Todo       ctermfg=101 cterm=none guifg=#857b6f gui=italic


" ------------------------------------------------------------------------------------------------------
" LeaderF
" ------------------------------------------------------------------------------------------------------
hi Lf_hl_cursorline  ctermfg=209 ctermbg=none            guifg=Yellow
hi Lf_hl_rgHighlight ctermfg=236 ctermbg=209  cterm=none guifg=#000000 gui=none guibg=#cccc66


" ------------------------------------------------------------------------------------------------------
" Golang: Vim-go
" ------------------------------------------------------------------------------------------------------
" Golang
hi goPackage               ctermfg=109
hi goImport                ctermfg=209

" Fields 178 143 140
hi goField                 ctermfg=144 "cterm=italic

hi goVar                   ctermfg=45
hi goConst                 ctermfg=45
hi goDeclaration           ctermfg=45
hi goTypeDecl              ctermfg=45

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
hi goDecimalInt           ctermfg=147"12
hi goHexadecimalInt       ctermfg=147"12
hi goOctalInt             ctermfg=147"12
hi goOctalError           ctermfg=147"12
hi Integer                ctermfg=147"12
hi goFloat                ctermfg=147"12

" Predefined functions and values
" append cap close complex copy delete imag len
" make new panic print println real recover
" true false
" nil iota
hi goBuiltins              ctermfg=45
hi goBoolean               ctermfg=12
hi goPredefinedIdentifiers ctermfg=12

" Extra types commonly seen
hi goExtraType             ctermfg=45

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
hi goFunctionCall          ctermfg=153

" Structs & Interfaces
hi goReceiverType          ctermfg=247
hi goTypeName              ctermfg=174
hi goTypeConstructor       ctermfg=174 "cterm=italic
hi goDeclType              ctermfg=218 "struct interface

" Variable Assignments
hi goVarDefs               ctermfg=253
hi goVarAsgsign            ctermfg=253

" Comment
hi goComment               ctermfg=243 "cterm=italic

" Strings and their contents
hi goRawString             ctermfg=76
hi goFormatSpecifier       ctermfg=99
hi goCharacter             ctermfg=222


" ------------------------------------------------------------------------------------------------------
" Python: Pymode
" ------------------------------------------------------------------------------------------------------
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


" ------------------------------------------------------------------------------------------------------
" Ale
" ------------------------------------------------------------------------------------------------------
hi ALEErrorSign          ctermfg=9
hi ALEErrorSignLineNr    ctermfg=9
hi ALEWarningSign        ctermfg=222
hi ALEWarningSignLineNr  ctermfg=222


" ------------------------------------------------------------------------------------------------------
" Bookmark
" ------------------------------------------------------------------------------------------------------
" hi BookmarkSign          ctermbg=none ctermfg=160
hi BookmarkLine          ctermbg=158  ctermfg=238


" ------------------------------------------------------------------------------------------------------
" Vim-gitgutter
" ------------------------------------------------------------------------------------------------------
hi! link SignColumn     LineNr
hi SignColumn           ctermbg=0
hi GitGutterAdd         ctermfg=2     guifg=#009900
hi GitGutterChange      ctermfg=3     guifg=#bbbb00
hi GitGutterDelete      ctermfg=1     guifg=#ff2222

" vim: set list noet :
