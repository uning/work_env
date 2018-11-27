
" for skel
if !exists("g:skeleton_replacements")
    let g:skeleton_replacements={}
endif
function! g:skeleton_replacements.AUTHOR()
    return g:author
endfunction

function! g:skeleton_replacements.COMPANY()
    return g:company
endfunction

function! g:skeleton_replacements.EMAIL()
    return g:email
endfunction

function! g:skeleton_replacements.FILE_EXT()
    return ''
endfunction
