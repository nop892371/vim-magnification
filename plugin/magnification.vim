" magnification
" Version: 0.0.1
" Author: 
" License: 

if exists('g:loaded_magnification')
  finish
endif
let g:loaded_magnification = 1

let s:save_cpo = &cpo
set cpo&vim

if get(g:, 'magnification_key', '') == ''
    let g:magnification_key = ',w'
endif

noremap <Plug>(maginification_toggle) :call magnification#toggle_magnify()<CR>

exe "nmap" g:magnification_key "<Plug>(maginification_toggle)"

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
