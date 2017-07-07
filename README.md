# my vimrc configration
![image](https://user-images.githubusercontent.com/3623889/27951348-8c151f4a-633f-11e7-9fa3-659149c3ce00.png)

This LayerVim is Vim Configuration.

# Installation
You must install git. 


# Vim Plug Requirement

https://github.com/junegunn/vim-Plug 


# windows
```
cd %USERPROFILE%
git clone https://github.com/hsnks100/vimrc.git
```

# linux
```
cd ~/
git clone https://github.com/hsnks100/vimrc.git
```

# step1

create ~/.vimrc  
put this at the top of your ~/.vimrc

``` 
set rtp+=~/vimrc  
source ~/vimrc/.vimrc 
```



# step2
execute vim, type ':PlugInstall[enter]'



