au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BUfNewFile,BufRead *.conf setf conf
au BufNewFile,BufRead /etc/apache2/*.conf,/etc/apache2/*/*  setf apache
au BufNewFile,BufRead /etc/hosts  setf hostconf
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead /etc/fonts/*.conf,/etc/fonts/*/*  set ft=xml
