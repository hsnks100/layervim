# my vimrc configration
![image](https://cloud.githubusercontent.com/assets/3623889/25554361/6eef0350-2d06-11e7-89ad-ab645dfaf0e3.png)


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



