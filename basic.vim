
" call KSOO()



function! g:BsdToKnR()
    while(search("^\\s*{") > 0) 
        execute "normal! /^\\s*{/\<CR>kJ" 
    endwhile 
endfunction
