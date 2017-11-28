scriptencoding utf-8



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



"set AirlineTheme=cool
"call AirlineTheme(cool)


nmap _ :call NERDComment(0, "toggle")<CR>
vmap _ :call NERDComment("x", "toggle")<CR>

let g:ctrlp_working_path_mode = 'r'

let g:netrw_chgwin = 2
let g:netrw_silent = 1
let g:netrw_split = 2
let g:netrw_liststyle = 3 



" Fugitive config
"execute "nnoremap <leader>gc :!git commit % -m \"empty".expand("%:n")."\"<CR>"
"git add %
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gs :Gstatus<CR> 
"emmet config 
let g:user_emmet_leader_key='<C-Z>'
" ??


 

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



command! A :call FSwitch('%', '') 
set clipboard=unnamed

