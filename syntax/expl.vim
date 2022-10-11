setlocal commentstring=//%s
syn match xType   "\vstruct\s+[a-zA-Z0-9_]+"

syn match xCustomParen "(" contains=cParen,cCppParen
syn match xCustomFunc "\w\+\s*(" contains=xCustomParen
syntax match Operator /[=+\-*\/%!]/
syntax match xOperatorDeref /[\[\]\.]/
syntax match Comment /\/\/.*/
syntax match xUnalias /^.*__unalias__.*$/
syntax match xConstant /[0-9]/ 
syn region	xString		start=+\%(L\|u\|u8\|U\|R\|LR\|u8R\|uR\|UR\)\="+ skip=+\\\\\|\\"+ end=+"+ 

syntax keyword xMemory initialize alloc free null
syntax keyword xConditional if then else endif while do endwhile break continue
syntax keyword xBuiltin exposcall alias return begin end decl enddecl type endtype
syntax keyword xIO write read
syntax keyword xBreakpoint breakpoint
syntax keyword xType int str
syntax keyword xLogic AND NOT OR

let b:current_syntax = "expl"

highlight def link cCustomFunc  Function

highlight def Operator ctermfg=94   guifg=#875f00
highlight def xLogic ctermfg=105  guifg=#8787ff
highlight def xOperatorDeref ctermfg=Red guifg=#ff5555
highlight def xConditional ctermfg=211  guifg=#ff87af
highlight def xType ctermfg=77   guifg=#5fd75f 
highlight def xBuiltin ctermfg=111  guifg=#87afff
highlight def xCustomFunc ctermfg=227  guifg=#ffff5f
highlight def xCustomClass ctermfg=48   guifg=#00ff87
highlight def xIO ctermfg=209  guifg=#ff875f 
highlight def xMemory  ctermfg=179  guifg=#d7af5f
highlight def xBreakpoint ctermfg=Red guifg=#ff4444
highlight def xConstant ctermfg=44   guifg=#00d7d7
highlight def xString ctermfg=Red guifg=#ff5555
highlight def link xUnalias Comment
highlight xInvalid guibg=#ff4444 guifg=#333333

