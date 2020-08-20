filetype plugin indent on

setlocal list
setlocal listchars=tab:··
setlocal tabstop=4
setlocal softtabstop=0
setlocal expandtab
setlocal shiftwidth=4
setlocal incsearch

if (&ft == 'c')
    set textwidth=80
    execute "setlocal colorcolumn=81"
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
    setlocal comments=s:/*,m:**,ex:*/
endif
