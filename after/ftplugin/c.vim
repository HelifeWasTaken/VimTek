filetype plugin indent on

setlocal list
setlocal listchars=tab:··
setlocal tabstop=4
setlocal softtabstop=0
setlocal expandtab
setlocal shiftwidth=4
setlocal incsearch

function! VimTekCleanExtraSpaces() "Function to clean unwanted spaces
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

autocmd BufWritePre * :call VimTekCleanExtraSpaces()

set fileformat=unix

setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8
set encoding=utf-8

autocmd BufNewFile,BufRead  *  try
autocmd BufNewFile,BufRead  *  set encoding=utf-8
autocmd BufNewFile,BufRead  *  endtry

if (&ft == 'c')
    set textwidth=80
    execute "setlocal colorcolumn=81"
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
    setlocal comments=s:/*,m:**,ex:*/
endif
