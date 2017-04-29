# my vimrc configration

# windows
```
cd %USERPROFILE%
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%/.vim/bundle/Vundle.vim
```

# linux
```
cd ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

# next

## step1
```
cd ~/ or cd %USERPROFILE%
git clone https://github.com/hsnks100/vimrc.git
```

create ~/.vimrc and insert follow text

``` 
set rtp+=~/vimrc  
source ~/vimrc/.vimrc 
```

## step2
execute gvim, :BundleInstall [enter]



