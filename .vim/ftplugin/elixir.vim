syn keyword elixirKeyword defapi defcall test setup setup_all
syn keyword elixirCustomDefine defapi defcall nextgroup=elixirFunctionDeclaration skipwhite skipnl
hi def link elixirCustomDefine Define
if exists("loaded_matchit")
    " let b:match_words = ',\<def\>\|\<defp\>\|\<defmodule\>\|\<defmacro\>\|\<case\>\|\<if\>\|\<fn\>\|\<receive\>:\<do\>\|\<after\>\|\<of\>\|->\|\<catch\>\|\<else\>:\<end\>'
    let b:match_ignorecase = 0

  let b:match_words = '\:\@<!\<\%(do\|fn\)\:\@!\>' .
        \ ':' .
        \ '\<\%(else\|elsif\|catch\|after\|rescue\)\:\@!\>' .
        \ ':' .
        \ '\:\@<!\<end\>' .
        \ ',{:},\[:\],(:)'
endif
