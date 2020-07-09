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
setlocal noerrorbells
setlocal nowrap
setlocal incsearch

let c_space_errors = 1

abbrev iff if () {<CR>a<CR>}
abbrev elsef if () {<CR>a<CR>} else {<CR>a<CR>}
abbrev elsif if () {<CR>a<CR>} elif () {<CR>a<CR>}
abbrev ifelsif if () {<CR>a<CR>} elif () {<CR>a<CR>} else {<CR>a<CR>}
abbrev forf for() {<CR>a<CR>}
abbrev whilef while () {<CR>a<CR>}
abbrev mallocf (type)malloc(size * sizeof(type));
abbrev incstdio #include <stdio.h>
abbrev incunistd #include <unistd.h>
abbrev incstdlib #include <stdlib.h>
abbrev incmath #include <math.h>
abbrev incstring #include <string.h>
abbrev mainf int main(void)<CR>{<CR>return (0);<CR>}
abbrev mainargf int main(int argc, char **argv)<CR>{<CR>return (0);<CR>}
abbrev intf int funct()<CR>{<CR>return (int);<CR>}
abbrev charf char funct()<CR>{<CR>return (char);<CR>}
abbrev strf char *funct(arg)<CR>{<CR>return (char*);<CR>}
abbrev voidf void funct()<CR>{<CR>foo<CR>}
abbrev switchf switch() {<CR>case '?':<CR>break;<CR>case '?':<CR>break;<CR>default:<CR>break<CR>}
abbrev dof do {<CR><CR>} while ( );
abbrev structf struct name {<CR><CR>};

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

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   set encoding=utf-8
autocmd BufNewFile,BufRead  *   endtry
