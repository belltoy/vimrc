" 输入转换(缩写)
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
"   iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>
" abbr if if()<Left><C-R>=Eatchar('\s')<CR>
abbr sout System.out.println();<Left><Left><C-R>=Eatchar('\s')<CR>
" abbr psf public static final
" abbr psvm public static void main(String[] args) {<CR><CR>}<Up><Left><C-R>=Eatchar('\s')<CR>
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

" This one helps creating beans. Nothing serious actually, but might come in handy.
nnoremap <buffer> <silent>dc :call <SID>AddBean()<CR>
function! s:AddBean()
  let line = line('.')
  let name = inputdialog('Enter the name of the variable: ')
  let type = inputdialog('Enter the type of the variable: ')
  let upperName = substitute(name, '^\(\w\)\(.*\)$', '\u\1\2', '')
  call append(line, "\t}")
  call append(line, "\t\tthis.".name." = ".name.";")
  call append(line, "\tpublic void set".upperName."(".type." ".name.") {")
  call append(line, "")
  call append(line, "\t}")
  call append(line, "\t\treturn (this.".name.");")
  if type == 'boolean'
      call append(line, "\tpublic ".type." is"."".upperName."() { ")
  else
      call append(line, "\tpublic ".type." get"."".upperName."() { ")
  endif
  call append(line, "")
  call append(line, "\tprivate ".type." ".name.";")
  call append(line, "\t//".name)
  return line
endfunction
