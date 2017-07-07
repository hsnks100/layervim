" ksoo function

let g:spacevim_dir = $HOME.'/vimrc' 
let g:spacevim_layers_dir = '/layers'
let g:spacevim_private_layers_dir = '/private'
let g:spacevim_excluded = []
let g:spacevim_plugins = []
let g:plug_options = {}
let g:layers_sum = 0



function! layer#update() abort
let s:py_exe = has('python') ? 'python' : 'python3' 

execute s:py_exe "<< EOF"
import os
import vim

spacevim_dir = vim.eval('g:spacevim_dir')
topic_base = spacevim_dir + vim.eval('g:spacevim_layers_dir')
private_base = spacevim_dir + vim.eval('g:spacevim_private_layers_dir')

layers = [f for f in os.listdir(topic_base) if os.path.isdir(os.path.join(topic_base,f))]

layer_path = {}
layers_sum = 0

layers_sum += len(layers)
for l in layers:
    layer_path[l] = topic_base + '/' + l

vim.command("let g:layers_sum = %d" % layers_sum)
vim.command("let g:layer_path = %s" % layer_path)


EOF

endfunction 

function! s:my_plugins(...)
    if a:0 == 0
        return s:err('Argument missing: plugin name required.')
    elseif a:0 == 1
        call add(g:spacevim_plugins, a:1)
    elseif a:0 == 2
        call add(g:spacevim_plugins, a:1)
        let g:plug_options[a:1] = a:2
    else
        return s:err('Too many arguments for MP command.')
    endif
endfunction
function! s:invoke_plug()
    for l:plugin in g:spacevim_plugins
        call plug#(l:plugin, get(g:plug_options, l:plugin, ''))
    endfor
endfunction
function! s:load_packages()
    " Load Layer packages
    for l:layer in keys(g:layer_path)
        let l:layer_packages = g:layer_path[l:layer] . '/packages.vim'
        echo l:layer_packages
        call s:Source(l:layer_packages)
    endfor 
endfunction
function! s:load_config()
    " Load Layer config
    for l:layer in keys(g:layer_path)
        let l:layer_config = g:layer_path[l:layer] . '/config.vim'
        call s:Source(l:layer_config)
    endfor

endfunction
function! s:layers_info() abort
    let g:spacevim_info_path = g:spacevim_dir. '/core/autoload/info.vim'
    let g:spacevim_info_path = g:WINDOWS ? s:path(g:spacevim_info_path) : g:spacevim_info_path
    if filereadable(g:spacevim_info_path)
        execute 'source ' . g:spacevim_info_path
    else
        call layer#update(s:py_exe)
    endif
endfunction
silent function! s:Source(file) abort
    if filereadable(expand(a:file))
        execute 'source ' . fnameescape(a:file)
    else
        echom '[space-vim] ' . a:file . ' does not exist, which may cause unexpected errors. Try running `:LayerUpdate` to get rid of this error.'
    endif
endfunction


command! -nargs=+ -bar MP call s:my_plugins(<args>)

call plug#begin('~/.vim/plugged')
call layer#update()
call s:load_packages() 
call s:invoke_plug() 
call plug#end()

call s:load_config()




filetype plugin indent on    " required
