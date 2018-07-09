
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"Plug 'Enhanced-Javascript-syntax'
" airline symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='base16_default'


map <F2> :NERDTree<CR> 

nmap <F6> :BufExplorer<CR>
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 


let g:gitgutter_map_keys = 0



"<plug>(fzf-complete-path)
nmap <leader><tab> <plug>(fzf-complete-path)


let g:goyo_width = 200


nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
