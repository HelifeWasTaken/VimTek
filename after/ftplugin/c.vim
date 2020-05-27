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

abbrev printf printf("")
abbrev if if () {<CR><CR>}
abbrev else if () {<CR><CR>}<CR>else {<CR><CR>}
abbrev elsif if () {<CR><CR>}<CR>elif (){<CR><CR>}
abbrev ifelsif if () {<CR><CR>}<CR>elif (){<CR><CR>}<CR>else {<CR><CR>}
abbrev for for(; ; ){<CR><CR>}
abbrev while while () {<CR><CR>}
abbrev malloc (type)malloc(size * sizeof(type));
abbrev stdio #include <stdio.h>
abbrev unistd #include <unistd.h>
abbrev stdlib #include <stdlib.h>
abbrev mainf int main(void)<CR>{<CR>return (0);<CR>}
abbrev mainargf int main(int argc, char **argv)<CR>{<CR>return (0);<CR>}
abbrev intf int funct(arg)<CR>{<CR>return (int);<CR>}
abbrev charf char funct(arg)<CR>{<CR>return (char);<CR>}
abbrev strf char *funct(arg)<CR>{<CR>return (char*);<CR>}
abbrev voidf void funct(arg)<CR>{<CR>foo<CR>}
abbrev sof sizeof()
abbrev write write(, , );
abbrev ret return ();
abbrev fprintf fprintf(file, "text");
abbrev fopen fopen(file)
abbrev fclose fclose(file)
abbrev switch switch( condition ) {<CR>case '?':<CR>break;<CR>case '?':<CR>break;<CR>}
abbrev do do {<CR><CR>} while ( condition );
abbrev struct struct name {<CR><CR>};
