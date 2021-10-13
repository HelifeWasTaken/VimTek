VimTek
===========

An all-in-one configuration to ease (n)vim usage at EPITECH.

This plugin version generates the headers of 2021):

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
```vim
Plug 'Heliferepo/VimTek'
```

## Warning

If you like to use multiple screens in one instance of Vim (except tmux) do not use auto put header
> Also if you use plugins as Undotree 

## Headers

You can add Epitech headers to your files with `<F2>`

You can also use the `:EpiHeader` command.

Sometime even if you add .c on WSL (for example) it won't detect the filetype so you can use `<F3>` it will set before filetype=c

This can also solve trailing space problem that won't show or c syntax not highlighted

## Coding Style

Some settings are setup to ease compliance with the EPITECH C Coding Style v4.3:
- Use 4 spaces for indenting
- Show trailing whitespaces
- Expand `<Tab>` to four spaces

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

## What is new from other repositories (EDIT : everything that was new in this repo has been moved into a repository called VimUtils -> Except for EpiHeader)

```vim
execute "setlocal colorcolumn=81"
setlocal nowrap
setlocal incsearch
```
Setted abbreviations

Please make sure to write somthing before using the abbreviations or set the header otherwise abbrev can have issues

```vim
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
```

The  { \[ and ( multiple lines indentation are made automatically with 

```vim
inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O
```

Uwanted spaces are clean automatically when you save with : 
```vim
function! CleanExtraSpaces() "Function to clean unwanted spaces
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

autocmd BufWritePre * :call CleanExtraSpaces()
```

I added change a change all occurences function that occure when you press `<leader>r` in normal mode and `<C-r>r` in insertion mode
```vim
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
```

Set filetype as c when EpiHeader is set
```vim
nmap <Leader>t :set filetype=c<CR><bar>:<C-U>EpiHeader<CR>
``` 

If you don't want EpiHeader to set the file as c add :
```vim
nmap <Leader>'keywanted' :<C-U>EpiHeader<CR>
```
To Higlight printf()
```vim
nmap <Leader>nc :set hlsearch<bar>/\vprintf<CR>
```
To remove the highlighting of printf()
```vim
nmap <Leader>ns :set nohlsearch<CR>
```

"Optional" :

I made sure that everytime you write on your file you are set on unix utf-8 :

```vim
set fileformat=unix

setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8
set encoding=utf-8

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   set encoding=utf-8
autocmd BufNewFile,BufRead  *   endtry
```

## My advices

Please do not use other colorscheme than the defaults one they are well made not too flashy and (etc...)

I have been a longtime user of gruvbox but you will notice that it's really useless. Peachpuff is generally set by default and does c syntax pretty well.

To remap your Leader key add o your .vimrc :

```vim
let mapleader = "key"

"I strongly suggest to use space leaderkey :

let mapleader = " "
```

## To contribute or to report a bug

1. Pull Request : You have develeopped your own version please check the template of the repository
2. Issue : Check the feature (request) or bug Template
3. Email : mattisdalleau@gmail.com
