function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-x>\<c-v>"
    endif
endfunction
function! InsertsTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<s-tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <buffer> <expr> <tab> InsertTabWrapper()
inoremap <buffer> <expr> <s-tab> InsertsTabWrapper()
