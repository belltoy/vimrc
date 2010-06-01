" 输入转换(缩写)
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
"   iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>
abbr if if()<Left><C-R>=Eatchar('\s')<CR>
abbr sout System.out.println();<Left><Left><C-R>=Eatchar('\s')<CR>
abbr psf public static final
abbr psvm public static void main(String[] args) {<CR><CR>}<Up><Left><C-R>=Eatchar('\s')<CR>
abbr St String
abbr pu public
abbr pr private
abbr ex extends
abbr im implements

"vim java complete plugin setting
setlocal omnifunc=javacomplete#Complete

"vim javabrowser plugin setting
let JavaBrowser_Ctags_Cmd='/usr/bin/ctags'
let JavaBrowser_Inc_Winwidth=0

" 输入 <F7> 可以看到类资源树
nmap <F7> :JavaBrowser<CR>
imap <F7> <ESC><F7>

autocmd FileType java let b:jcommenter_class_author='belltoy'
autocmd FileType java let b:jcommenter_file_author='belltoy(belltoy@gmail.com)'

" 输入 <F12> 就能直接写入注释.
nmap <F12> :call JCommentWriter()<CR>
imap <F12> <ESC><F12>
