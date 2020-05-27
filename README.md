THIS REPOSITORY IS A FORK OF [VIM-EPITECH](https://github.com/Le-Bit/vim-epitech)

VimTek
===========

An all-in-one configuration to ease (n)vim usage at EPITECH.

This plugin version generates the headers of 2019):

```c
/*
** EPITECH PROJECT, 2020
** VIM TO SHOW
** File description:
** Showing a sample
*/
```

The year on the first line is automatically set based on the current date.

## Installation

If you use VimPlug, add this to your `.vimrc` (or `~/.config/nvim/init.vim` if
you're using Neovim):
```
Plug 'Heliferepo/VimTek'
```

## Headers

You can add Epitech headers to your files with `<Leader>t` (so `\t` by default).
You can also use the `:EpiHeader` command.

To remap your Leader key add o your .vimrc :

```
let mapleader = "thekey"
```

## Coding Style

Some settings are setup to ease compliance with the EPITECH C Coding Style v3.1:
- Use 4 spaces for indenting
- Show trailing whitespaces
- Expand `<Tab>` to four spaces
- Filetype is c (When Header is set)

## Differences with the original repository

I have chosen to go for the same thing as [Nasso](https://github.com/nasso) credits to him :

As you may have noticed, this repository is a fork I've made to update the
original, outdated plugin. I have removed a bunch of features I considered
obselete and/or unneeded, including:
- The integration with the norm checker - _Just write code that follows the
coding style, you'll get used to it and it's less error-prone._
- The `:EpiCleaner` command, that "fixes" pastes from the PDFs - _Never. Ever.
Copy. Anything. From. The. PDF. NEVER. Trust me._
- A lot of useless code now that the headers have changed and are far smaller -
_E.g. `g:header_update`, `g:epi_login` etc._

## What is new from other repositories

```vim
execute "setlocal colorcolumn=81"
setlocal nu
setlocal noerrorbells
setlocal nowrap
setlocal undodir=~/.vim/undodir
setlocal undofile
setlocal incsearch
```
Setted abbreviations

```vim
abbrev printf printf("")
abbrev ( ()
abbrev if if () {<CR><CR>}
abbrev else if () {<CR><CR>}<CR>else {<CR><CR>}
abbrev elslif if () {<CR><CR>}<CR>elif (){<CR><CR>}
abbrev ifslif if () {<CR><CR>}<CR>elif (){<CR><CR>}<CR>else {<CR><CR>}
abbrev for for(; ; ){<CR><CR>}
abbrev while () {<CR><CR>}
abbrev malloc (type)malloc(size * sizeof(type));
abbrev stdio #include <stdio.h>
abbrev unistd #include <unistd.h>
abbrev stdlib #include <stdlib.h>
abbrev mainf int main(void)<CR>{<CR>return (0);<CR>}
abbrev mainargf int main(int argc, char **argv)<CR>{<CR>return (0);<CR>}
abbrev intf int funct(arg)<CR>{<CR>return (an int);<CR>}
abbrev charf char funct(arg)<CR>{<CR>return (a char);<CR>}
abbrev strf char *funct(arg)<CR>{<CR>return (a *char);<CR>}
abbrev voidf void funct(arg)<CR>{<CR>foo<CR>}
abbrev sof sizeof()
abbrev write write(out, char, nofchar);
abbrev ret return ();
abbrev fprintf fprintf(file, "text");
abbrev fopen fopen(file)
abbrev fclose fclose(file)
abbrev switch switch( condition ) {<CR>case '?':<CR>break;<CR>case '?':<CR>break;<CR>}
abbrev do do {<CR><CR>} while ( condition );
abbrev struct struct name {<CR><CR>};
```

```vim
nmap <Leader>t :set filetype=c<CR><bar>:<C-U>EpiHeader<CR>
```
Set filetype as c when EpiHeader is set if you don't want EpiHeader to set the file as c add :

```vim
nmap <Leader>'keywanted' :<C-U>EpiHeader<CR>
```
