# my vimrc configration
![image](https://user-images.githubusercontent.com/3623889/27951348-8c151f4a-633f-11e7-9fa3-659149c3ce00.png)

This LayerVim is Vim Configuration.

# Installation
Installation requires Git and triggers git clone for each configured repository to ~/.vim/bundle/ by default. unless you have git, you must install git. 




# windows
```
cd %USERPROFILE%
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/.vim/bundle/Vundle.vim
git clone https://github.com/hsnks100/vimrc.git
```

# linux
```
cd ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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
execute vim, type ':BundleInstall[enter]'



