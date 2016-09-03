syntax on

set guifont=NanumgothicCoding\ Bold\ 14
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
"set foldmethod=indent                                 
set foldnestmax=2
set foldlevel=1
set ignorecase                                        
set smartcase                                         
"set ai                    " auto index
"set si                    " smart index
"set cindent            " c style index
set ignorecase      " °Ë»ö½Ã ´ë¼Ò¹®ÀÚ ±¸º°ÇÏÁö¾ÊÀ½
set hlsearch         " °Ë»ö½Ã ÇÏÀÌ¶óÀÌÆ®(»ö»ó °­Á¶)
set nocompatible   " ¹æÇâÅ°·Î ÀÌµ¿°¡´É
set bs=indent,eol,start    " backspace Å° »ç¿ë °¡´É
set history=1000    " ¸í·É¾î¿¡ ´ëÇÑ È÷½ºÅä¸®¸¦ 1000°³±îÁö
set ruler              " »óÅÂÇ¥½ÃÁÙ¿¡ Ä¿¼­ÀÇ À§Ä¡ Ç¥½Ã
set nobackup      " ¹é¾÷ÆÄÀÏÀ» ¸¸µéÁö ¾ÊÀ½
set title               " Á¦¸ñÀ» Ç¥½Ã
set showmatch    " ¸ÅÄªµÇ´Â °ýÈ£¸¦ º¸¿©ÁÜ
set nowrap         " ÀÚµ¿ ÁÙ¹Ù²Þ ÇÏÁö ¾ÊÀ½
set wmnu           " tab ÀÚµ¿¿Ï¼º½Ã °¡´ÉÇÑ ¸ñ·ÏÀ» º¸¿©ÁÜ
set autochdir
set noerrorbells visualbell t_vb=
set hidden
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set et 
set ts=4
set sw=4
set sts=4 
set ai 
set fileencoding=utf-8
if has('autocmd')
        autocmd GUIEnter * set visualbell t_vb=
endif
let mapleader=","
colorscheme darkblue
"nmap <leader>u :silent! argdo | write
"nmap <leader>d :bn<BAR>:bd#<CR>

nmap <C-j> :bn<CR>
nmap <C-k> :bp<CR>
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>l
imap jj <ESC>j
imap kk <ESC>k
nmap <SPACE> i<SPACE><ESC>l
nmap <S-CR> i<CR><ESC>
vnoremap p "_dP=`]`]
nnoremap x "_x
inoremap <C-e> <C-x><C-e>
inoremap <C-y> <C-x><C-y>
noremap YY :%y+<CR> 
vnoremap Y "+y
vnoremap <C-C> :"+y<CR>
inoremap <C-V> <ESC>"+p<CR>i
 
nnoremap <SPACE>fed :e ~/.vimrc<CR>
nnoremap <SPACE>feR :source ~/.vimrc<CR>

"compile setting
autocmd FileType cpp setlocal makeprg=g++\ -g\ -std=c++11\ %:r.cpp\ -o\ %<.exe
autocmd FileType pl,perl setlocal makeprg=perl\ %\ <input.txt
autocmd FileType py,python setlocal makeprg=python\ %
autocmd FileType r setlocal makeprg=Rscript\ %

noremap <C-S-B> :wa<CR>:make<CR>:cope<CR><C-w>p
autocmd FileType cpp noremap <buffer> <C-F5> :cexpr system('./'.expand('%:r') .'.exe< input.txt')<CR>:cope<CR><C-w>p
autocmd FileType cpp noremap <buffer> <C-F6> :cexpr system(expand('%:r'))<CR>:cope<CR><C-w>p
autocmd FileType cpp noremap <buffer> <F5> :!gdb %<.exe input.txt<CR>:cope<CR><C-w>p

autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
 "noremap <F5> :wa<CR>:make<CR>
"noremap <C-F5> :! %<.exe < input.txt<CR>
"autocmd FileType cpp set makeprg=g++\ -std=c++11\ %:r.cpp\ -o\ %<.exe
"noremap <F9> :call Run()<CR>
"inoremap <F9> <ESC>:call Run()<CR>
if bufwinnr(1)
  map <kPlus> <C-W>+
  map <kMinus> <C-W>-
  map <kDivide> <c-w><
  map <kMultiply> <c-w>>
endif
set scrolloff=10
