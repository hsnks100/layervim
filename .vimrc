set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/L9'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ctrlp.vim'
Plug 'vimplugin/project.vim'
Plug 'lenny0702/vim-sftp-sync-inPython'
Plug 'mihaifm/bufstop'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tmhedberg/matchit'
Plug 'vim-scripts/LargeFile'
Plug 'vim-scripts/jade.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'wookiehangover/jshint.vim'
Plug 'vim-scripts/a.vim'
"Plug 'taglist-plus'
Plug 'scrooloose/nerdtree'
"Plug 'vim-scripts/Conque-GDB'
Plug 'vim-scripts/Tagbar'
Plug 'altercation/vim-colors-solarized' 
Plug 'mattn/emmet-vim'
Plug 'hsnks100/VimExplorer'
Plug 'benmills/vimux'
Plug 'jszakmeister/vim-togglecursor'
Plug 'tpope/vim-surround'
Plug 'changyuheng/color-scheme-holokai-for-vim'
Plug 'tpope/vim-repeat' 
Plug 'airblade/vim-gitgutter' 
Plug 'jelera/vim-javascript-syntax'
Plug 'luochen1990/rainbow' 
Plug 'easymotion/vim-easymotion' 
Plug 'hsanson/vim-android' 
Plug 'vim-scripts/grep.vim'
Plug 'leafgarland/typescript-vim'

Plug 'rakr/vim-one'


call plug#end()




filetype plugin indent on    " required




let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"Plug 'Enhanced-Javascript-syntax'


let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
" air-line
set laststatus=2
"let g:airline_powerline_fonts = 1

"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif


" airline symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='base16_default'

"set AirlineTheme=cool
"call AirlineTheme(cool)


nmap _ :call NERDComment(0, "toggle")<CR>
vmap _ :call NERDComment("x", "toggle")<CR>

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
let g:syntastic_check_on_w = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11'


" Fugitive config
execute "nnoremap <leader>gc :!git commit % -m \"empty".expand("%:n")."\"<CR>"
"git add %
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gb :Gblame<CR>

"emmet config 
let g:user_emmet_leader_key='<C-Z>'


 

" easymotion
" <Leader>f{char} to move to {char}
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap f <Plug>(easymotion-bd-wl)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1 

" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k) 


runtime basic.vim

