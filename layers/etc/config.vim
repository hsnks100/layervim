scriptencoding utf-8 


<<<<<<< HEAD
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gs :Gstatus<CR> 
=======

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



let g:ctrlp_working_path_mode = 'r'

let g:netrw_chgwin = 2
let g:netrw_silent = 1
let g:netrw_split = 2
let g:netrw_liststyle = 3 



"emmet config 
let g:user_emmet_leader_key='<C-Z>'
" ??


 

" easymotion
" <Leader>f{char} to move to {char}
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap f <Plug>(easymotion-bd-wl) 
nmap F <Plug>(easymotion-bd-jk)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1 

" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k) 

"set clipboard=unnamed


nnoremap gr :Grep <C-R><C-W> *




command! A :call FSwitch('%', '') 
command! -bang -nargs=* -complete=file Make AsyncRun -program=make

let g:DoxygenToolkit_briefTag_pre="@Brief  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Han Gyoung-Su"
let g:DoxygenToolkit_licenseTag="My own license"
>>>>>>> my
