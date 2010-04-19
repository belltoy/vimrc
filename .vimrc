" Created by belltoy<http://belltoy.net/>
" Last modified: 2009-09-06 15:52:54
" -----------------------------------------------------------------------------
" |                            VIM Settings                                   |
" |                   (see gvimrc for gui vim settings)                       |
" |                                                                           |
" | Some highlights:                                                          |
" |   jj = <esc>  Very useful for keeping your hands on the home row          |
" |   ,n = toggle NERDTree off and on                                         |
" |                                                                           |
" |   ,f = fuzzy find all files                                               |
" |   ,b = fuzzy find in all buffers                                          |
" |                                                                           |
" |   hh = inserts '=>'                                                       |
" |   aa = inserts '@'                                                        |
" |                                                                           |
" |   ,h = new horizontal window                                              |
" |   ,v = new vertical window                                                |
" |                                                                           |
" |   ,i = toggle invisibles                                                  |
" |                                                                           |
" |   enter and shift-enter = adds a new line after/before the current line   |
" |                                                                           |
" |   :call Tabstyle_tabs = set tab to real tabs                              |
" |   :call Tabstyle_spaces = set tab to 2 spaces                             |
" |                                                                           |
" | Put machine/user specific settings in ~/.vimrc.local                      |
" -----------------------------------------------------------------------------

set ffs=unix

"autocmd FileType java  source $HOME/.vim/files/myjava.vim
"autocmd FileType php   source $HOME/.vim/files/myphp.vim

" Searching ************************************************************** {{{
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase
" }}}

set nocompatible
set nopaste
set pastetoggle=<F11>
set number
set ai
set si
set shiftwidth=4   "sw  设置自动缩进 2 个空格, 当然要设自动缩进先
set softtabstop=4  "sts 设置 softtabstop 为 4. 输入 tab 后就跳了 4 格
set tabstop=4      "实际的 tab 即为 4 个空格, 而不是缺省的 8 个
set expandtab      "在输入 tab 后, vim 用恰当的空格来填充这个 tab
set diffopt+=vertical

" Line Wrapping ********************************************************** {{{
set nowrap
set linebreak  " Wrap at word
" }}}

" Encoding *************************************************************** {{{
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312,default,latin1
" }}}

" Colors ***************************************************************** {{{
"set t_Co=256 " 256 colors
set background=dark 
syntax on "syntax 的设置一定要在colo之前，不然colo就会无效
colorscheme mine
filetype plugin indent on   " File stuff
" }}}

set directory=~/tmp/vim/swap    " Set Swap directory
set nobk "关闭自动备份
set cot=menuone ",preview  "全能补全的时候只显示菜单，preview预览窗口

" Status Line ************************************************************ {{{
set showcmd
set ruler " Show ruler
" set ch=2 " Make command line two lines high
" match LongLineWarning '\%120v.*' " Error format when a line is longer than 120
                                   " 对一些中文行不起作用
" }}}

" Invisible characters *************************************************** {{{
set listchars=trail:.,tab:>-,eol:$,nbsp:%,extends:>,precedes:<
set nolist
" }}}

" Mappings *************************************************************** {{{
" Professor VIM says '87% of users prefer jj over esc', jj abrams disagrees
imap jj <Esc>
imap uu _
imap hh =>
imap aa @
imap <up> <C-o>gk
imap <down> <C-o>gj
imap .. ->

" 选中后按/直接搜索
vmap / y/<C-R>"<CR>

" 缩排
nmap <Tab> v>
nmap <S-Tab> v<
vmap <Tab> >gv 
vmap <S-Tab> <gv 

" 插入模式下按F2插入时间戳
imap <F2> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" }}}


" Omni Completion ******************************************************** {{{
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" May require ruby compiled in
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete 
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTreDTree********************************************************** {{{
map <F10> :NERDTreeToggle<CR>
:noremap ,n :NERDTreeToggle<CR>

" User instead of Netrw when doing an edit /foobar
let NERDTreeHijackNetrw=1

" Single click for everything
let NERDTreeMouseMode=1

" Set ignore file regex
let NERDTreeIgnore=['\.vim$', '\.pyc$', '\.class$', '\~$']
" }}}

" Netrw ****************************************************************** {{{
" let g:netrw_list_hide='^\..*'
" }}}

" Taglist *************************************************************** {{{
"定义Tlist的快捷键为tl
let mapleader = ","
"map <silent> <Leader>tl :Tlist<CR>
map <F8> :Tlist<CR><C-W><C-W>
map ,f :Tlist<CR><C-W><C-W>

let Tlist_Ctags_Cmd = '/usr/bin/ctags'

"let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
"let Tlist_Compact_Format = 0
"let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
"let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1            "如果taglist窗口是最后一个显示的窗口，则1退出vim;0不退出vim
"let Tlist_File_Fold_Auto_Close = 0
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Hightlight_Tag_On_BufEnter = 1
"let Tlist_Inc_Winwidth = 0
"let Tlist_Max_Submenu_Items = 1
"let Tlist_Max_Tag_Length = 30
"let Tlist_Process_File_Always = 0
"let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1              "同时(0)/不同时(1)显示多个文件的tag，只显示当前文件的
let Tlist_Sort_Type = "name"             " order:以tag名字在tag文件中出现的位置排序，name:以名字排序
"let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1           " 1在右侧显示taglist窗口，0在左侧
let Tlist_WinWidth = 40
" }}}


" BufExplorer *********************************************************** {{{
:command BE BufExplorer
map <F5>  :BufExplorer<CR>
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
" }}}


" Cscope **************************************************************** {{{
if has("cscope")
        set csprg=/usr/bin/cscope
        set csto=0
        set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        " else add database pointed to by environment
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
        set csverb
endif
"map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
"map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>
nmap s<C-]> :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap g<C-]> :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap c<C-]> :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap t<C-]> :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap e<C-]> :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap f<C-]> :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap i<C-]> :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap d<C-]> :cs find d <C-R>=expand("<cword>")<CR><CR>
" }}}

" SnippetsEmu ************************************************************ {{{
"imap <unique> <C-j> <Plug>Jumper
"let g:snip_start_tag = "_\."
"let g:snip_end_tag = "\._"
"let g:snip_elem_delim = ":"
"let g:snip_set_textmate_cp = '1'  " Tab to expand snippets, not automatically.
" }}}


" fuzzyfinder_textmate *************************************************** {{{
"map ,f :FuzzyFinderTextMate<CR>
map ,b :FuzzyFinderBuffer<CR>
"let g:fuzzy_ignore = '.o;.obj;.bak;.exe;.pyc;.pyo;.DS_Store;.db'
" }}}

" autocomplpop *********************************************************** {{{
" complete option
"set complete=.,w,b,u,t,k
"let g:AutoComplPop_CompleteOption = '.,w,b,u,t,k'
"set complete=.
let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2
" }}}

" pyditcion ************************************************************** {{{
let g:pydiction_location = '~/.vim/pydiction-1.2/complete-dict'
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Function define
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 在保存时自动修改Last modified的时间
"autocmd BufWritePre,FileWritePre * ks|call LastModified()|'s
fun! LastModified()
    let l = line("$")
    exe "1," . l . 'g/^\s*\(\*\|#\|"\|\/\/\)\?\s*[L]ast modified:\s/s/^\(\s*\(\*\|#\|"\|\/\/\)\?\s*[L]ast modified:\s\).*/\1' .
                \ strftime("%Y-%m-%d %H:%M%S")
"    \ strftime("%F %T")
"    \ strftime("%Y %b %d %X")

endfun

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" See ~/.gvimrc

set exrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Host specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"if hostname() == "foo"
  " do something
"endif

"vim: fdm=marker
