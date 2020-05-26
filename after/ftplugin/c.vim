if (&ft != 'c')
    finish
endif

filetype plugin indent on

setlocal cindent
execute "setlocal colorcolumn=81"
setlocal comments=s:/*,m:**,ex:*/
setlocal list
setlocal listchars=tab:··
setlocal tabstop=4
setlocal softtabstop=0
setlocal expandtab
setlocal shiftwidth=4
setlocal nu
setlocal noerrorbells
setlocal nowrap
setlocal undodir=~/.vim/undodir
setlocal undofile
setlocal incsearch

let c_space_errors = 1
