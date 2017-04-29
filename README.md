# my vimrc configration
![image](https://cloud.githubusercontent.com/assets/3623889/25554361/6eef0350-2d06-11e7-89ad-ab645dfaf0e3.png)


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

create ~/.vimrc and insert follow text

``` 
set rtp+=~/vimrc  
source ~/vimrc/.vimrc 
```



# step2
execute gvim, :BundleInstall [enter]



