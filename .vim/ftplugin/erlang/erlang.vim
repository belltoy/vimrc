set keywordprg=erl\ -man
if exists("loaded_matchit")
    let b:match_words = ',\<receive\>\|\<begin\>\|\<case\>\|\<if\>\|\<fun\>\|\<try\>:\<after\>\|\<of\>\|->\|\<catch\>:\<end\>'
endif
