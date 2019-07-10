# Layervim Introduce
Basically, vim has a lot of plugin managers.

Each plug-in is easy to manage, but as the number increases, managing the config files and plug-ins is very difficult.

So I created a vim framework to solve it.

I want that I have minimal vim-configuration to categorize configuration-files. Thus I had used spacevim, ... stuff like that.

However I can't find vim-configuration-framework for me. spacevim is very huge, It is difficult to categorize vim-configuration-files for me.

I maked minimal vim-configuration-framework called layervim.

LayerVim help you to categorize your vim-configuration. LayerVim also can recognite any directory-name though, your vim must support python2 or python3. 

I also referenced spacevim codes.  

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
  layer.vim -- core logic [do not edit this file]
```



# windows
```
cd %USERPROFILE%
git clone https://github.com/hsnks100/layervim.git

append follow text to your vimrc
set rtp+=~/layervim  
source ~/layervim/layer.vim
```

# linux
```
curl -s -L https://raw.githubusercontent.com/hsnks100/layervim/master/install-script.sh | bash
```

# final step
execute vim, type ':PlugInstall[enter]'



