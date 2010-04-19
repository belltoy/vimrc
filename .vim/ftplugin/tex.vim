command! MTex call MTex()
function! MTex()
    w
    !latex %
    silent !dvipdfmx %:r
    silent !evince %:r.pdf
endfunction
