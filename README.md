# my vimrc configration


![image](https://user-images.githubusercontent.com/3623889/28023502-0d4d321a-65c9-11e7-9bf1-8cbc9902f5cd.png)
This LayerVim is Vim Configuration.

# Installation
You must install git. 


# Vim Plug Requirement

https://github.com/junegunn/vim-Plug 

# LayerVim Structure

```
▸ backup_files/
▾ layers/
  ▾ etc/ -- category1
      config.vim
      packages.vim
      README.md
  ▾ syntax/ -- category2
      config.vim
      packages.vim
  ▾ ui/ -- category3
      config.vim
      packages.vim
▸ swap_files/
▸ undo_files/
  basic.vim -- basic configration
  layer.vim -- core logic

```


# windows
```
cd %USERPROFILE%
git clone https://github.com/hsnks100/layervim.git
```

# linux
```
cd ~/
git clone https://github.com/hsnks100/layervim.git
```

# step1

create ~/.vimrc  
put this at the top of your ~/.vimrc

``` 
set rtp+=~/layervim  
source ~/layervim/layer.vim
```



# step2
execute vim, type ':PlugInstall[enter]'



