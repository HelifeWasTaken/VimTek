if exists('g:loaded_epitech')
    finish
endif

let g:loaded_epitech = 1

if !exists('g:header_auto')
  let g:header_auto = 1
endif

command! EpiHeader call epitech#header#Put()

augroup epitech
    autocmd!

    if g:header_auto == 1
        autocmd BufNewFile * call epitech#header#Put()
    endif
augroup END

nmap <Leader>c :set filetype=c<CR><bar>:<C-U>EpiHeader<CR>
nmap <Leader>t :<C-U>EpiHeader<CR>
nmap <Leader>nc :set hlsearch<bar>/\vprintf<CR>
nmap <Leader>ns :set nohlsearch<CR>
