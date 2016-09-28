function! KSOO()

  syntax on

  "language en_US.UTF-8
  set fileencoding=utf-8
  set encoding=utf-8

  if has("win32")
    set guifont=D2Coding:h18
  else
    set guifont=NanumGothicCoding\ Bold\ 18
  endif
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
  set nobackup     
  set title       
  set showmatch  
  set nowrap    
  set wmnu        
  set autochdir
  set noerrorbells visualbell t_vb=
  set hidden
  set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
  set et 
  set ts=2
  set sw=2
  set sts=2 
  set ai 
  set nocursorline
  set noesckeys
  if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
  endif
  let g:mapleader=","
  colorscheme darkblue
  set t_Co=256

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
  inoremap <C-V> <ESC>"+pa
  vnoremap <C-V> s<ESC>"+p 
  nnoremap <SPACE>fed :e ~/.vimrc<CR>
  nnoremap <SPACE>feR :source ~/.vimrc<CR>
  nnoremap <leader>d :b#<bar>bd#<CR>

  "compile setting


  "function! Builder()
  "endfunction
  function! Kompile() 
    let b:buildstr = ""
    let l:ext = expand("%:e")
    echo "call kompile"
    if l:ext == "cpp" 
      let b:buildstr = "g++ -std=c++11 ".expand("%")." -o ".expand("%<")
    elseif  l:ext == "py"
      let b:buildstr = "python ".expand("%")
    elseif l:ext == "r"
      let b:buildstr = "Rscript ".expand("%")
    elseif l:ext == "pl"
      let b:buildstr = "perl ".expand("%")
    endif

    if filereadable("input.txt")
      let b:buildstr .= " < input.txt"
    endif

    if executable('tmux') && !has('gui')
      call VimuxRunCommand("cd ".expand("%:p:h"))
      call VimuxRunCommand(b:buildstr) 
    else
      let b:buildstr = substitute(b:buildstr, " ", "\\\\ ", "g")
      echo b:buildstr
      silent execute "setlocal makeprg=".b:buildstr
      make
      vertical botright copen
    endif
  endfunction


  function! Exekute()
    if executable("tmux") && !has('gui')
      call VimuxRunCommand(expand("%:p:r") . " <input.txt")
    else
      " noremap <F6> :cexpr system('./'.expand('%:r') .'< input.txt')<CR>:cope<CR><C-w>p
      execute "cexpr system(\"" . expand('%:p:r') . " <input.txt\")"
      normal <CR>
      vertical botright copen
      "execute("vertical botright cope")
      "  <CR>:cop<CR><C-w>p"
    endif
  endfunction


  if has("win32")
    autocmd FileType cpp setlocal makeprg=g++\ -g\ -std=gnu++11\ %:r.cpp\ -o\ %<.exe
    autocmd FileType pl,perl setlocal makeprg=perl\ %\ <input.txt
    autocmd FileType py,python setlocal makeprg=python\ %
    noremap <C-S-B> :wa<CR>:make<CR>:cope<CR><C-w>p
    "autocmd FileType cpp noremap <buffer> <C-F5> :cexpr system('./'.expand('%:r') .'.exe< input.txt')<CR>:cope<CR><C-w>p
    autocmd FileType cpp noremap <buffer> <C-F5> :cexpr system(expand('%:r') ." <input.txt")<CR>:cope<CR><C-w>p
    autocmd FileType cpp noremap <buffer> <C-F6> :cexpr system(expand('%:r'))<CR>:cope<CR><C-w>p
    autocmd FileType cpp noremap <buffer> <F5> :!gdb %<.exe input.txt<CR>:cope<CR><C-w>p
    "noremap <F5> :wa<CR>:make<CR>
    "noremap <C-F5> :! %<.exe < input.txt<CR>
    "autocmd FileType cpp set makeprg=g++\ -std=c++11\ %:r.cpp\ -o\ %<.exe
    "noremap <F9> :call Run()<CR>
    "inoremap <F9> <ESC>:call Run()<CR> 
  else 
    noremap <F6> :cexpr system('./'.expand('%:r') .'< input.txt')<CR>:cope<CR><C-w>p
    noremap <C-S-B> :wa<CR>:silent call Kompile()<CR><c-w>p
    autocmd FileType cpp noremap <buffer> <F5> :silent call Exekute()<CR><c-w>p
  endif

  autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
  if bufwinnr(1)
    map <kPlus> <C-W>+
    map <kMinus> <C-W>-
    map <kDivide> <c-w><
    map <kMultiply> <c-w>>
  endif
  set scrolloff=10 


  " swp 파일들 한쪽으로 모으기.
  set backupdir=~/kimrc/backup_files//
  set directory=~/kimrc/swap_files//
  set undodir=~/kimrc/undo_files//
  set scrolloff=10



  if has("gui")
    noremap <M-Space> :simalt ~<CR>
    inoremap <M-Space> <C-O>:simalt ~<CR>
    cnoremap <M-Space> <C-C>:simalt ~<CR>
  endif

  if has("win32")
    runtime delmenu.vim
    runtime menu.vim
  else

  endif




  if has('gui_running')
    set background=light
    colorscheme darkblue
  else
    "set term="term-256color"
    "set term=screen-256color
  endif 
endfunction

call KSOO()

