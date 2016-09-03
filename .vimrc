set nocompatible              " be iMproved, required
filetype off                  " required

let g:JSHintUpdateWriteOnly = 1
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'bling/vim-airline'
Plugin 'ctrlp.vim'

Plugin 'vimplugin/project.vim'
Plugin 'lenny0702/vim-sftp-sync-inPython'
Plugin 'mihaifm/bufstop'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/matchit'
Plugin 'LargeFile'
Plugin 'jade.vim'
Plugin 'AutoComplPop'
Plugin 'wookiehangover/jshint.vim'
Plugin 'a.vim'
Plugin 'taglist-plus'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'Tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
"Plugin 'jslint.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ±âº» ¹«½Ã ¼³Á¤
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

nmap <A-;> :call NERDComment(0, "toggle")<CR>
vmap <A-;> :call NERDComment("x", "toggle")<CR>
"let $PATH .= ';C:\Program Files (x86)\mingw-w64\i686-5.3.0-posix-dwarf-rt_v4-rev0\mingw32\bin;'

" °¡Àå °¡±î¿î .git µð·ºÅä¸®¸¦ cwd(ÇöÀç ÀÛ¾÷ µð·ºÅä¸®)·Î »ç¿ë
" ¹öÀü °ü¸®¸¦ »ç¿ëÇÏ´Â ÇÁ·ÎÁ§Æ®¸¦ ÇÒ ¶§ ²Ï ÀûÀýÇÏ´Ù.
" .svn, .hg, .bzrµµ Áö¿øÇÑ´Ù.
let g:ctrlp_working_path_mode = 'r'
"map <leader>b :Bufstop<CR>             " get a visual on the buffers

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

let g:netrw_chgwin = 2
let g:netrw_silent = 1
let g:netrw_split = 2
let g:netrw_liststyle = 3


set scrolloff=10

"let NERDTreeIgnore=['\.vim$', '\~$', '.o']
"e ftp://mindjanggi@59.22.105.139/
"
"
" ESC키를 누르면 한글 모드가 해제 "
" 입력모드에서 이전 언어 설정 모드 유지 "
"
"inoremap <ESC> <ESC>:set imdisable<CR>
"nnoremap i :set noimd<CR>i
"nnoremap I :set noimd<CR>I
"nnoremap a :set noimd<CR>a
"nnoremap A :set noimd<CR>A
"nnoremap o :set noimd<CR>o
"nnoremap O :set noimd<CR>O
"nnoremap s :set noimd<CR>s
"nnoremap S :set noimd<CR>S

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

if has('gui_running')
    set background=light
    colorscheme solarized
else
    set background=dark
    colorscheme darkblue
endif



" Fugitive config
nnoremap <leader>gc :Gcommit %<CR>
"git add %
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gp :Git push origin master<CR>
nnoremap <leader>gb :Gblame<CR>


"emmet config 
let g:user_emmet_leader_key='<C-Z>'
