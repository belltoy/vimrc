au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BUfNewFile,BufRead *.conf setf conf
au BufNewFile,BufRead /etc/apache2/*.conf,/etc/apache2/*/*  setf apache
au BufNewFile,BufRead /etc/hosts  setf hostconf
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead /etc/fonts/*.conf,/etc/fonts/*/*  set ft=xml

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
if exists("did\_load\_filetypes")
    finish
endif

augroup markdown
    au! BufRead,BufNewFile *.mkd,*.md   setfiletype mkd
augroup END
