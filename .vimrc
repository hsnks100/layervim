set nocompatible              " be iMproved, required
filetype off                  " required

let g:JSHintUpdateWriteOnly = 1
" set the runtime path to include Vundle and initialize
set rtp+=~/vimrc
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

runtime basic.vim
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


let g:netrw_chgwin = 2
let g:netrw_silent = 1
let g:netrw_split = 2
let g:netrw_liststyle = 3



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

