<<<<<<< HEAD
set guioptions-=m
set guioptions-=T
set number            " line Ç¥½Ã¸¦ ÇØÁÝ´Ï´Ù.
set laststatus=2                                      
set cmdheight=2                                       
set cursorline                                        
set shortmess=atI                                     
set nu				                                  
set smarttab                                          
set smartindent                                       
set foldenable                                        
set mouse=a			                                  
set foldnestmax=2
set foldlevel=1
set ignorecase                                        
set smartcase                                         
set ignorecase 
set hlsearch   
set nocompatible 
set bs=indent,eol,start 
set history=1000   
set ruler         
set noswapfile
set nobackup
set nowritebackup 
set title       
set showmatch  
set nowrap    
set wmnu        
set autochdir
set noerrorbells visualbell t_vb=
set hidden
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:#
set et 

set ts=4
set sw=4
set sts=4 
set ai 
set nocursorline
set noesckeys
set wrap lbr
syntax on 
set fileencodings=utf-8,euc-kr
set encoding=utf-8

set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
=======

" call KSOO()



function! g:BsdToKnR()
    while(search("^\\s*{") > 0) 
        execute "normal! /^\\s*{/\<CR>kJ" 
    endwhile 
endfunction
>>>>>>> my
