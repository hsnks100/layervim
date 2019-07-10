<<<<<<< HEAD
=======
Plug 'tpope/vim-fugitive'

>>>>>>> my
Plug 'scrooloose/nerdtree'
map <F2> :NERDTree<CR> 

Plug 'vim-scripts/Tagbar'
Plug 'altercation/vim-colors-solarized' 
Plug 'rakr/vim-one' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
<<<<<<< HEAD
Plug 'fholgado/minibufexpl.vim' 
Plug 'jlanzarotta/bufexplorer'
=======

Plug 'jlanzarotta/bufexplorer'
nmap <leader>w :BufExplorer<CR>
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
Plug 'junegunn/goyo.vim'
let g:goyo_width = 200
Plug 'rafi/awesome-vim-colorschemes'
Plug 'cocopon/pgmnt.vim'


Plug 'easymotion/vim-easymotion'
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
map <Leader><Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)


Plug 'jreybert/vimagit'

>>>>>>> my
