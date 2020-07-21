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

    setlocal cindent
    let c_space_errors = 1

    abbrev iff if () {<CR>
    abbrev forf for() {<CR>
    abbrev whilef while () {<CR>
    abbrev mallocf (type)malloc(size * sizeof(type));

    abbrev incstdio #include <stdio.h>
    abbrev incunistd #include <unistd.h>
    abbrev inclib #include <stdlib.h>
    abbrev incmath #include <math.h>
    abbrev incstring #include <string.h>
    abbrev incmy #include <my.h>
    abbrev incbool #include <stdbool.h>
    abbrev inccdef #include <cdefs.h>
    abbrev incdef #include <stddef.h>
    abbrev incint #include <stdint.h>

    abbrev mainf int main(void)<CR>{<CR>return (0);
    abbrev mainargf int main(int argc, char **argv)<CR>{<CR>return (0);
    abbrev intf int f()<CR>{<CR>return (int);
    abbrev charf char f()<CR>{<CR>return (char);
    abbrev strf char *f()<CR>{<CR>return (char*);
    abbrev voidf void f()<CR>{<CR>foo
    abbrev switchf switch() {<CR>case '?':<CR>break;<CR>case '?':<CR>break;<CR>default:<CR>break;

endif

inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O

nnoremap <leader>ai magg=G`a

function! CleanExtraSpaces() "Function to clean unwanted spaces
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

autocmd BufWritePre * :call CleanExtraSpaces()
"call CleanExtraSpaces to remove unwanted spaces when saving

function! Therenamer(word)
    let s:replace = a:word
    echohl Question
    let s:replace = input("Replace with: ", a:word)
    echohl None
    exec "%s/" . a:word . "/" . s:replace . "/g"
endfunction

command! Renamer call feedkeys("\yiw :call Therenamer(\"\<C-r>\"\")")

nnoremap <leader>r :Renamer
imap <C-r>r <Esc>:Renamer

set fileformat=unix

setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8
set encoding=utf-8

autocmd BufNewFile,BufRead  *  try
autocmd BufNewFile,BufRead  *  set encoding=utf-8
autocmd BufNewFile,BufRead  *  endtry
