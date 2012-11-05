au BufRead,BufNewFile /etc/nginx/*,*/etc/nginx/* set ft=nginx
au BUfNewFile,BufRead *.conf setf conf
au BufNewFile,BufRead /etc/apache2/*.conf,/etc/apache2/*/*  setf apache
au BufNewFile,BufRead /etc/hosts  setf hostconf
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead /etc/fonts/*.conf,/etc/fonts/*/*  set ft=xml
au BufNewFile,BufRead rebar.config,Emakefile,*.yrl,*.xrl set ft=erlang

" Git
autocmd BufNewFile,BufRead *.git/COMMIT_EDITMSG    setf gitcommit
autocmd BufNewFile,BufRead *.git/config,.gitconfig setf gitconfig
autocmd BufNewFile,BufRead git-rebase-todo         setf gitrebase
autocmd BufNewFile,BufRead .msg.[0-9]*
      \ if getline(1) =~ '^From.*# This line is ignored.$' |
      \   setf gitsendemail |
      \ endif
autocmd BufNewFile,BufRead *.git/**
      \ if getline(1) =~ '^\x\{40\}\>\|^ref: ' |
      \   setf git |
      \ endif

" Thrift
autocmd BufNewFile,BufRead *.thrift     setf thrift

" markdown filetype file
"if exists("did\_load\_filetypes")
"    finish
"endif

"augroup markdown
"    au! BufRead,BufNewFile *.mkd,*.md   setfiletype mkd
"augroup END

" Vala Syntax support
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala
" The syntax file additionally supports following options
" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120
