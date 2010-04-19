set iskeyword=@,48-57,_,128-167,224-235
"source /home/belltoy/.vim/files/phpfolding.vim
"source /home/belltoy/.vim/files/PDV.vim  " PDV (phpDocumentor for Vim) 
" php doc
" 输入 <F12> 就能直接写入注释.
" 插入模式
inoremap <F12> <ESC>:call PhpDocSingle()<CR>i 
" 普通模式
nnoremap <F12> :call PhpDocSingle()<CR> 
" 可视模式
vnoremap <F12> :call PhpDocRange()<CR> 

" 全部折叠
map <F6> <Esc>:EnableFastPHPFolds<Cr>
"map <F6> <Esc>:EnablePHPFolds<Cr>
"取消折叠
map <F7> <Esc>:DisablePHPFolds<Cr>

" 输入转换(缩写)
func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

"定义缩写
" TODO DELETE
" replace with snipMate.vim
abbr pppln <?php<CR><CR>?><Up><Left><C-R>=Eatchar('\s')<CR>
abbr ppp <?php  ?><Left><Left><Left><C-R>=Eatchar('\s')<CR>
abbr func function
abbr __cons __construct
abbr pu public
abbr pr private
abbr st static
abbr cl class
abbr ab abstract
abbr ex extends
abbr im implements
abbr re require("");<Left><Left><Left><C-R>=Eatchar('\s')<CR>
abbr reo require_once("");<Left><Left><Left><C-R>=Eatchar('\s')<CR>
abbr inc include("");<Left><Left><Left><C-R>=Eatchar('\s')<CR>
abbr inco include_once("");<Left><Left><Left><C-R>=Eatchar('\s')<CR>

"打开 SQL 语法高亮: >
let php_sql_query = 1
"打开字符串里的 HTML 语法高亮: >
let php_htmlInStrings = 1

let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'
