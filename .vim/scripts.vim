if did_filetype()	" filetype 已经设立..
  finish		" ..不需要这些检测
endif

if getline(1) =~ '^#!.*\<node\>'
  setfiletype javascript
"elseif getline(1) =~? '\<drawing\>'
  "setfiletype drawing
endif
