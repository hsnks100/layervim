Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'
map <F2> :NERDTree<CR> 

Plug 'vim-scripts/Tagbar'
Plug 'altercation/vim-colors-solarized' 
Plug 'rakr/vim-one' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 

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



Plug 'jreybert/vimagit'

