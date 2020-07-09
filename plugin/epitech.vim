if exists('g:loaded_epitech')
    finish
endif

let g:loaded_epitech = 1

if !exists('g:header_auto')
  let g:header_auto = 0
endif

command! EpiHeader call epitech#header#Put()

augroup epitech
    autocmd!

    if g:header_auto == 1
        autocmd BufNewFile * call epitech#header#Put()
    endif
augroup END

map <F3> :set filetype=c<CR><bar>:<C-U>EpiHeader<CR>
map <F2> :<C-U>EpiHeader<CR>
nmap <Leader>nc :set hlsearch<bar>/\vprintf<CR>
nmap <Leader>ns :set nohlsearch<CR>
