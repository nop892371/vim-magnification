let s:save_cpo = &cpo
set cpo&vim

function! magnification#toggle_magnify()
    if !exists('t:magnify_flag')
        let t:magnify_flag = v:false
    endif
    if !t:magnify_flag
        let t:magnify_flag = v:true
        exe "normal \<c-w>\<c-_>"
        exe "normal \<c-w>\<c-|>"
    else
        let t:magnify_flag = v:false
        exe "normal \<c-w>\<c-=>"
    endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

