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

abbrev iff if () {<CR><CR>}
abbrev elsef if () {<CR><CR>} else {<CR><CR>}
abbrev elsif if () {<CR><CR>} elif () {<CR><CR>}
abbrev ifelsif if () {<CR><CR>} elif () {<CR><CR>} else {<CR><CR>}
abbrev forf for(  ) {<CR><CR>}
abbrev whilef while () {<CR><CR>}
abbrev mallocf (type)malloc(size * sizeof(type));
abbrev incstdio #include <stdio.h>
abbrev incunistd #include <unistd.h>
abbrev incstdlib #include <stdlib.h>
abbrev mainf int main( void )<CR>{<CR>return (0);<CR>}
abbrev mainargf int main( int argc, char **argv[] )<CR>{<CR>return (0);<CR>}
abbrev intf int funct()<CR>{<CR>return (int);<CR>}
abbrev charf char funct()<CR>{<CR>return (char);<CR>}
abbrev strf char *funct(arg)<CR>{<CR>return (char*);<CR>}
abbrev voidf void funct()<CR>{<CR>foo<CR>}
abbrev writef write();
abbrev switchf switch() {<CR>case '?':<CR>break;<CR>case '?':<CR>break;<CR>}
abbrev dof do {<CR><CR>} while ( );
abbrev structf struct name {<CR><CR>};
