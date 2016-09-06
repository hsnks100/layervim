set nocompatible              " be iMproved, required
filetype off                  " required

let g:JSHintUpdateWriteOnly = 1
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'vim-airline/vim-airline'
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
"Plugin 'taglist-plus'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/Conque-GDB'
"Plugin 'Tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
"Plugin 'jslint.vim'
call vundle#end()            " required
filetype plugin indent on    " required
"let rtp_basic=expand("%:p:h")
"echo "set rtp+=".rtp_basic 
"execute "set rtp+=".rtp_basic
runtime basic.vim
"runtime basic.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
" air-line
let g:Powerline_symbols = 'fancy'
set laststatus=2
 let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

nmap <A-;> :call NERDComment(0, "toggle")<CR>
vmap <A-;> :call NERDComment("x", "toggle")<CR>

let g:ctrlp_working_path_mode = 'r'

let g:netrw_chgwin = 2
let g:netrw_silent = 1
let g:netrw_split = 2
let g:netrw_liststyle = 3 

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
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=gnu++11 -stdlib=libc++'

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
