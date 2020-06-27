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
```vim
Plug 'Heliferepo/VimTek'
```

## Warning

If you use UndoTree do not use auto put

## Headers

You can add Epitech headers to your files with `<Leader>t` (so `\t` by default).
You can also use the `:EpiHeader` command.

To remap your Leader key add o your .vimrc :

```vim
let mapleader = "key"

"I strongly suggest to use space leaderkey :

let mapleader = " "
```

Sometime even if you add .c on WSL (for example) it won't detect the filetype so you can use `<Leader> c` it will set before filetype=c

This can also solve trailing space problem that won't show or c syntax not highlighted

## Coding Style

Some settings are setup to ease compliance with the EPITECH C Coding Style v3.1:
- Use 4 spaces for indenting
- Show trailing whitespaces
- Expand `<Tab>` to four spaces
- It happend a lot to forget a little printf that we used to debug in our code to make sure we don't forget anything we can use :

```vim
<Leader>nc /* To Higlight printf()
<Leader>ns /* To remove the Higlighting
```

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

Please make sure to write somthing before using the abbreviations or set the header otherwise abbrev can have issues

```vim
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
```

```vim
nmap <Leader>t :set filetype=c<CR><bar>:<C-U>EpiHeader<CR>
```
Set filetype as c when EpiHeader is set if you don't want EpiHeader to set the file as c add :

```vim
nmap <Leader>'keywanted' :<C-U>EpiHeader<CR>
```

```vim
nmap <Leader>nc :set hlsearch<bar>/\vprintf<CR>
nmap <Leader>ns :set nohlsearch<CR>
```

## My advices

Please do not use other colorscheme than the defaults one they are well made not too flashy and (etc...)

I have been a longtime user of gruvbox but you will notice that it's really useless. Peachpuff is generally set by default and does c syntax pretty well.

You can set it permanently by typing that in your ~/.vimrc

```vim
colorscheme peachpuff
```

You would also consider to use Undotree plugin set noswap undodir turn on syntax and change leaderkey as 'space' :

```vim
syntax on
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

let mapleader = " "

nnoremap <leader>u :UndotreeShow<CR>

Plug 'mbbill/undotree'
```
If you have any suggestions please let me know on :


## To contribute or to report a bug

1. Pull Request : You have develeopped your own version please check the template of the repository
2. Issue : Check the feature (request) or bug Template
3. Email : mattisdalleau@gmail.com
