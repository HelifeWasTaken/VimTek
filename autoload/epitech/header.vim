let s:comMap = {
            \ 'c': {'b': '/*', 'm': '**', 'e': '*/'},
            \ 'cpp': {'b': '//', 'm': '//', 'e': '//'},
            \ 'make': {'b': '##', 'm': '##', 'e': '##'},
            \ 'java': {'b': '//', 'm': '//', 'e': '//'},
            \ 'latex': {'b': '%%', 'm': '%%', 'e': '%%'},
            \ 'html': {'b': '<!--', 'm': '  --', 'e': '-->'},
            \ 'lisp': {'b': ';;', 'm': ';;', 'e': ';;'},
            \ 'css': {'b': '/*', 'm': '**', 'e': '*/'},
            \ 'pov': {'b': '//', 'm': '//', 'e': '//'},
            \ 'pascal': {'b': '{ ', 'm': '   ', 'e': '}'},
            \}

function! s:Epiyear()
    let old_time = v:lc_time
    language time en_US.utf8
    let str = strftime("%Y")
    exec 'language time '.old_time
    return str
endfunction

function! s:InsertFirst()
    call inputsave()
    let proj_name = input('Enter project name: ')
    let file_desc = input('Enter file description: ')
    call inputrestore()
    1,5s/µPROJECTNAMEµ/\= proj_name/ge
    1,5s/µYEARµ/\= s:Epiyear()/ge
    1,5s/µFILEDESCµ/\= file_desc/ge
endfunction

function! s:IsSupportedFt()
    return has_key(s:comMap, &filetype)
endfunction

function! epitech#header#Put()
    if !s:IsSupportedFt()
        echoerr "Epitech header: Unsupported filetype: " . &filetype
        return
    endif

    let l:bcom = s:comMap[&filetype]['b']
    let l:mcom = s:comMap[&filetype]['m']
    let l:ecom = s:comMap[&filetype]['e']

    let l:ret = append(0, l:bcom)
    let l:ret = append(1, l:mcom . " EPITECH PROJECT, µYEARµ")
    let l:ret = append(2, l:mcom . " µPROJECTNAMEµ")
    let l:ret = append(3, l:mcom . " File description:")
    let l:ret = append(4, l:mcom . " µFILEDESCµ")
    let l:ret = append(5, l:ecom)
    let l:ret = append(6, "")
    call s:InsertFirst()
    :8
endfunction
